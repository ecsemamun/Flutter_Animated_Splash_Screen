import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GtMaster extends StatefulWidget {
  const GtMaster({Key? key}) : super(key: key);

  @override
  State<GtMaster> createState() => _GtMasterState();
}

class _GtMasterState extends State<GtMaster> {
  WebViewController? _controller;
  double webProgress = 0;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) => setState(() {
            this.webProgress = progress / 100;
          }),
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.realme.com/bd/realme-gt-neo-2')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.realme.com/bd/realme-gt-neo-2/specs'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("realme GT Master"),
          actions: const [],
        ),
        body: Column(
          children: [
            webProgress < 1 ? SizedBox(
              height: 7,
              child: LinearProgressIndicator(
                value: webProgress,
                color: Colors.red,
                backgroundColor: Colors.black,
              ),
            ) : SizedBox(),
            Expanded(

                child: WebViewWidget(controller: _controller!)),
          ],

        ));

  }
}