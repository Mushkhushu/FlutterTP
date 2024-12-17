import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/tweetCard.dart';

class TweetCardFeed extends StatelessWidget{
  const TweetCardFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const TweetCard();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 5);
          },
        );
  }
}