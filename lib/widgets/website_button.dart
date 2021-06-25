import 'package:flutter/material.dart';
import 'package:packages_exercise_monstarlab/models/website.dart';

class WebsiteButton extends StatelessWidget {
  final Website website;

  const WebsiteButton({required this.website});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image(
              width: 470,
              image: AssetImage('assets/${website.imageFile}'),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            website.websiteName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
