import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'list_QR.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? barcode;

  Future<void> _launchInApp(Barcode barcode) async {
    if (await canLaunch(barcode.code)) {
      await launch(barcode.code,
          forceSafariVC: true,
          forceWebView: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {
      throw 'Could not launch ${barcode!.code}';
    }
  }

  Future<void> intiateVibration() async {
    if (barcode != null) {
      await Vibrate.vibrate();
      await FlutterBeep.beep();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => QRToList(
                    barcode: barcode,
                  )));
      controller!.pauseCamera();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller?.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    intiateVibration();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            buildQrView(context),
            Positioned(top: 10, child: buildControlButtons()),
            // Positioned(bottom: 180, child: buildResult()),
            Positioned(bottom: size.height / 6, child: buttonForUrl())
          ],
        ),
      ),
    );
  }

  Widget buildControlButtons() => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white24,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () async {
                  await controller?.toggleFlash();
                },
                icon: FutureBuilder<bool?>(
                  future: controller?.getFlashStatus(),
                  builder: (context, snapshot) {
                    if (snapshot.data != null) {
                      return Icon(
                          snapshot.data! ? Icons.flash_off : Icons.flash_on);
                    } else {
                      return Container();
                    }
                  },
                )),
            IconButton(
                onPressed: () async {
                  await controller?.flipCamera();
                },
                icon: FutureBuilder(
                  future: controller?.getCameraInfo(),
                  builder: (context, snapshot) {
                    if (snapshot.data != null) {
                      return Icon(Icons.switch_camera);
                    } else {
                      return Container();
                    }
                  },
                )),
          ],
        ),
      );

  Widget buttonForUrl() => ElevatedButton(
        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
        onPressed: () {
          _launchInApp(barcode!);
        },
        child: Text(
          barcode != null ? 'Tap for menu' : 'Scan QR code to get menu',
          maxLines: 3,
          style: TextStyle(color: Colors.white),
        ),
      );
  Widget buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderLength: 20,
          borderWidth: 10,
          borderRadius: 10,
          cutOutSize: MediaQuery.of(context).size.width * 0.8,
        ),
      );

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
      controller.scannedDataStream
          .listen((barcode) => setState(() => this.barcode = barcode));
    });
  }
}
