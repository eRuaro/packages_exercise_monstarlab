import 'package:flutter/material.dart';
import 'package:packages_exercise_monstarlab/Screens/siteview.dart';
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Siteview(website: website),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image(
                width: 470,
                image: AssetImage('assets/${website.imageFile}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
