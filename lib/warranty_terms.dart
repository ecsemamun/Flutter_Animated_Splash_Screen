import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WarrantyTerms extends StatefulWidget {
  const WarrantyTerms({Key? key}) : super(key: key);

  @override
  State<WarrantyTerms> createState() => _WarrantyTermsState();
}

class _WarrantyTermsState extends State<WarrantyTerms> {
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
            if (request.url.startsWith('https://www.realme.com/bd/legal/warranty-terms')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.realme.com/bd/legal/warranty-terms'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("realme Warranty Terms"),
          actions: const [],
        ),
        body: WebViewWidget(controller: _controller!));
  }
}

