import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Spare_Parts_List extends StatefulWidget {
  const Spare_Parts_List({Key? key}) : super(key: key);

  @override
  State<Spare_Parts_List> createState() => _Spare_Parts_ListState();
}

class _Spare_Parts_ListState extends State<Spare_Parts_List> {
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
            if (request.url.startsWith('https://www.realme.com/bd/support/spare-parts-price')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.realme.com/bd/support/spare-parts-price'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("realme Spare Parts List"),
          actions: const [],
        ),
        body: WebViewWidget(controller: _controller!));
  }
}
