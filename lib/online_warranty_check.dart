import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Online_Warranty_check extends StatefulWidget {
  const Online_Warranty_check({Key? key}) : super(key: key);

  @override
  State<Online_Warranty_check> createState() => _Online_Warranty_checkState();
}

class _Online_Warranty_checkState extends State<Online_Warranty_check> {
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
            if (request.url.startsWith(
                'https://www.realme.com/global/support/phonecheck')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
          Uri.parse('https://www.realme.com/global/support/phonecheck'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Online Warranty Check"),
          actions: const [],
        ),
        body: Column(
          children: [
            webProgress < 1
                ? SizedBox(
                    height: 7,
                    child: LinearProgressIndicator(
                      value: webProgress,
                      color: Colors.red,
                      backgroundColor: Colors.black,
                    ),
                  )
                : SizedBox(),
            Expanded(child: WebViewWidget(controller: _controller!)),
          ],
        ));
  }
}
