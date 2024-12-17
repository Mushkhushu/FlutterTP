import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/tweetCard.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFB5D4E1), // Fond général
      padding: const EdgeInsets.all(8.0),
      child: TweetCard(),
    );
  }
}






