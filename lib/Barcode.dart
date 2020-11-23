import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _scanBarcode = '';
  final myController = TextEditingController();

  void change(String text) {
    setState(() {
      _scanBarcode = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              controller: myController,
            ),
          ),
          RaisedButton(
              onPressed: () {
                change(myController.text);
              },
              // onPressed: () => scanBarcodeNormal(),
              child: Text("Start barcode scan")),
          Container(
              height: 150,
              child: SfBarcodeGenerator(
                value: '$_scanBarcode',
                showValue: true,
              )),
        ],
      ),
    )));
  }
}
