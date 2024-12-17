import 'package:flutter/material.dart';

class TweetImage extends StatelessWidget{
  const TweetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      height: 125,
      child: Image.asset("images/eldenring.jpg"),
    );
  }
}