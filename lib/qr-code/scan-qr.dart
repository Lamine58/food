// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'dart:developer';
import 'dart:io';
import 'package:e_foodivoir/food/menu-food.dart';
import 'package:e_foodivoir/function/function.dart';
import 'package:e_foodivoir/order/orders.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

var contextHome;

class QRViewWidget extends StatefulWidget {
  const QRViewWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewWidgetState();
}

class _QRViewWidgetState extends State<QRViewWidget> {

  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {

    setState(() {
      contextHome = context;
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                Center(
                  child: _buildQrView(context),
                ),
                Positioned(
                  child: Container(
                    child: Center(
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: secondaryColor(),
                            elevation: 0
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(LineIcons.times,color: Color.fromARGB(255, 72, 72, 72),),
                        ),
                      )
                    ),
                    width: MediaQuery.sizeOf(context).width,
                  ),
                  bottom: 50,
                )
              ], 
            )
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          borderLength: 50,
          borderWidth: 2),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MenuFood(scanData)),
        );
        controller.pauseCamera();
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}