import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeController extends StatefulWidget {
  const HomeController({required this.url, super.key});
  final String url;

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  late WebViewController webViewController;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (a) {},
          onProgress: (b) {},
          onPageFinished: (c) {},
        ),
      );
    webViewController.loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: webViewController,
    );
  }
}
