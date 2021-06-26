import 'package:flutter/material.dart';
import 'package:packages_exercise_monstarlab/data/data.dart';
import 'package:packages_exercise_monstarlab/widgets/website_button.dart';
import 'package:webviewx/webviewx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Websites',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: websites.length,
        itemBuilder: (context, int index) {
          return WebsiteButton(
            website: websites[index],
          );
        },
      ),
    );
  }
}
