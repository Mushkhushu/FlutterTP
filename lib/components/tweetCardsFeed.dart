import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/tweetCard.dart';

class TweetCardFeed extends StatelessWidget{
  const TweetCardFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFB3B3C1), // Fond du feed
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(

          itemCount: 10,
          itemBuilder: (context, index) {
            return const TweetCard();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 5);
          },
        ),
      ),
    );
  }
}