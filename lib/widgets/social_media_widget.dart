import 'package:beauty_call/utils/app_theme.dart';

import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  final String imageUrl;
  SocialMediaWidget({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27,
      height: 27,
      margin: const EdgeInsets.only(right: 15.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: AppTheme.COLOR_WHITE, borderRadius: BorderRadius.circular(6)),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
