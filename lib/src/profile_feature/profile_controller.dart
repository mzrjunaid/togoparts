import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfileController extends StatefulWidget {
  const ProfileController({required this.url, super.key});
  final String url;

  static const routeName = '/proflie';

  @override
  State<ProfileController> createState() => _ProfileControllerState();
}

class _ProfileControllerState extends State<ProfileController> {
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
