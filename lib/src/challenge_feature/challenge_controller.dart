import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChallengeController extends StatefulWidget {
  const ChallengeController({required this.url, super.key});
  final String url;

  static const routeName = '/web_view';

  @override
  State<ChallengeController> createState() => _ChallengeControllerState();
}

class _ChallengeControllerState extends State<ChallengeController> {
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
