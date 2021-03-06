import 'package:flutter/material.dart';
import 'package:packages_exercise_monstarlab/data/data.dart';
import 'package:packages_exercise_monstarlab/widgets/website_button.dart';

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
        physics: BouncingScrollPhysics(),
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
