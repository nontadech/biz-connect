import 'dart:async';

import 'package:biz_connect/presentation/pages/pdf/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';



class PDFPage extends StatefulWidget {
  final String url;
  final String title;
  const PDFPage({
    super.key,
    required this.url,
    required this.title,
  });

  @override
  State<PDFPage> createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> with WidgetsBindingObserver {
  final Completer<PDFViewController> _controller = Completer<PDFViewController>();

  @override
   Widget build(BuildContext context) {
    PDFBinding().dependencies();
    final pdfC = PDFController.call;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: widget.title,
        type: AppBarType.back,
      ),
      body: GetX(
        init: pdfC,
        initState: (_){
          pdfC.downloadFile(widget.url);
        },
        builder: (_){
          if(!pdfC.isLoading.value){
            return const Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
            );
          }
          return PDFView(
            filePath: pdfC.path.value,
            enableSwipe: true,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: true,
            pageSnap: true,
            onViewCreated: (PDFViewController pdfViewController) {
              _controller.complete(pdfViewController);
            },
          );
        }
      )
    );
  }
}
