import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class StoreAddress extends StatefulWidget {
  const StoreAddress({Key? key}) : super(key: key);

  @override
  State<StoreAddress> createState() => _StoreAddressState();
}

class _StoreAddressState extends State<StoreAddress> {
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
            if (request.url.startsWith('https://www.realme.com/bd/store-address')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.realme.com/bd/store-address'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("realme Store Address"),
          actions: const [],
        ),
        body: WebViewWidget(controller: _controller!));
  }
}
