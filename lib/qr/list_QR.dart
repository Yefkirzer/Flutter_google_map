import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRToList extends StatefulWidget {
  Barcode? barcode;
  QRToList({required this.barcode});

  @override
  _QRToListState createState() => _QRToListState();
}

class _QRToListState extends State<QRToList> {
  List<String> labels = ["CompanyName", "Adress", "Name", "PhoneNumber"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var ss = widget.barcode!.code;
    var dd = ss.split(",");
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                    width: size.width * 0.8,
                    child: ListView.builder(
                        itemCount: dd.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextFormField(
                                initialValue: dd[index],
                                readOnly: true,
                                autofocus: true,
                                decoration: InputDecoration(
                                  labelText: labels[index],
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          );
                        })),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
