import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';
import 'package:packages_exercise_monstarlab/models/website.dart';
import 'package:time/time.dart';

class Siteview extends StatefulWidget {
  final Website website;
  late WebViewXController webviewController;
  final DateTime time = DateTime.now();

  Siteview({required this.website});

  @override
  _SiteviewState createState() => _SiteviewState();
}

class _SiteviewState extends State<Siteview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(
            widget.time.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300
            ),
          ),
        ],
        title: Text(
          widget.website.websiteName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: ,
    );
  }
}