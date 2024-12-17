import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/tweetCard.dart';

class TweetCardFeed extends StatelessWidget{
  const TweetCardFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TweetCard()
          ],
        ),
      ),
    );
  }
}