import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:packages_exercise_monstarlab/models/website.dart';

class Siteview extends StatelessWidget {
  final Website website;
  final DateTime time = DateTime.now();

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  Siteview({required this.website});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Text(
              time.toString(),
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
        ],
        title: Text(
          website.websiteName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
      ),
      body: WebView(
        initialUrl: website.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
