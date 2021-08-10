import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchQR extends StatefulWidget {
  Barcode? barcode;
  LaunchQR({required this.barcode});

  @override
  _LaunchQRState createState() => _LaunchQRState();
}

class _LaunchQRState extends State<LaunchQR> {
  Future<void> _launchInApp(Barcode barcode) async {
    if (await canLaunch(widget.barcode!.code)) {
      await launch(widget.barcode!.code,
          forceSafariVC: true,
          forceWebView: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {
      throw 'Could not launch ${widget.barcode!.code}';
    }
  }

  @override
  void initState() {
    _launchInApp(widget.barcode!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
