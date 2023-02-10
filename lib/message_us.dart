import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class MessageUS extends StatefulWidget {
  const MessageUS({Key? key}) : super(key: key);

  @override
  State<MessageUS> createState() => _MessageUSState();
}

class _MessageUSState extends State<MessageUS> {
  WebViewController? _controller;
  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },

          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.facebook.com/realmeservicebd')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.facebook.com/realmeservicebd'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Message US Via Facebook"),
          actions: const [],
        ),
        body: WebViewWidget(controller: _controller!));
  }
}
