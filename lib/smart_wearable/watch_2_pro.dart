import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Watch_2_Pro extends StatefulWidget {
  const Watch_2_Pro({Key? key}) : super(key: key);

  @override
  State<Watch_2_Pro> createState() => _Watch_2_ProState();
}

class _Watch_2_ProState extends State<Watch_2_Pro> {
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
            if (request.url.startsWith('https://www.realme.com/bd/realme-watch-2-pro')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.realme.com/bd/realme-watch-2-pro'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("realme watch 2 Pro"),
          backgroundColor: Colors.yellow,
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