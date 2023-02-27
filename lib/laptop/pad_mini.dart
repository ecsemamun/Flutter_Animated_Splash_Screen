import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Pad_Mini extends StatefulWidget {
  const Pad_Mini({Key? key}) : super(key: key);

  @override
  State<Pad_Mini> createState() => _Pad_MiniState();
}

class _Pad_MiniState extends State<Pad_Mini> {
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
            if (request.url.startsWith('https://www.realme.com/bd/realme-pad-mini')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.realme.com/bd/realme-pad-mini/specs'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("realme Pad Mini"),
          backgroundColor: Colors.yellow,
        ),
        body: WebViewWidget(controller: _controller!));
  }
}