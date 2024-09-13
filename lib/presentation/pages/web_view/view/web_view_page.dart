import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  final String title;
  final int? eventId;

  const WebViewPage({
    super.key,
    required this.url,
    required this.title,
    this.eventId,
  });

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewController controller = WebViewController();
  int progressNow = 0;
  bool status = false;
  final store = Get.find<LocalStorageService>();
  @override
  void initState() {
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          setState(() {
            progressNow = progress;
          });
        },
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
        onPageFinished: (String url) {
          // if(status){
          //   context.push('/my_ticket', extra: {'event_id': widget.eventId});
          // }
        },
        onUrlChange: (UrlChange url) {
          if (url.url!.contains("order") && !url.url!.contains("checkout")) {
            setState(() {
              status = true;
            });
            popupThank(context, onPressed: () {
              context.pop();
            });
          }
        },
      ),
    )
    ..loadRequest(
      Uri.parse(widget.url),
      headers: <String, String>{"Authorization": 'Bearer ${store.user!.data!.attendee!.api_token!}'},
    );
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: widget.title,
        type: AppBarType.back,
      ),
      body: progressNow == 100 ? 
        WebViewWidget(controller: controller) : 
        const Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
    );
  }
}
