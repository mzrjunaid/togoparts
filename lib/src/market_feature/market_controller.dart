import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MarketController extends StatefulWidget {
  const MarketController({required this.url, super.key});
  final String url;

  static const routeName = '/web_view';

  @override
  State<MarketController> createState() => _MarketControllerState();
}

class _MarketControllerState extends State<MarketController> {
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
