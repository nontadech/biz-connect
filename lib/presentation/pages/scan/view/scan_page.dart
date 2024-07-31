import 'dart:io';

import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool loading = true;
 
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

    Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutWidth: MediaQuery.of(context).size.width-50,
          cutOutHeight: 220,
          ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    controller.scannedDataStream.listen((scanData) {
      if(loading){
        context.push('/scan/scan_detail', extra: {'code': scanData.code});
      }
      setState(() {
        loading = false;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
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

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildQrView(context),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 112,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft, // Start direction
                  end: Alignment.centerRight, // End direction
                  colors: [
                    Color(0xff0081DC),
                    Color(0xff60D0FA),
                    Color(0xff60D0FA),
                  ], // Customize your colors here
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/back.svg',
                        height: 32,
                        width: 32,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextCustom(
                      text: 'Scan',
                      color: Colors.white,
                      fontSize: FontSize.h5,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20), 
              child: TextCustom(
                  textAlign: TextAlign.center,
                  text: 'Hold the QR code inside the frame. It will be scanned automatically or',
                  color: Colors.white,
                  fontSize: FontSize.h5,
                  fontWeight: FontWeight.w500,
                ),
              
            ),
          ),
        ],
      ),
    );
  }
}
