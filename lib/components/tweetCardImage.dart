import 'package:flutter/material.dart';

class TweetImage extends StatelessWidget{
  final String imageURL;
  const TweetImage({required this.imageURL,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      height: 125,
      child: Image.asset(imageURL),
    );
  }
}