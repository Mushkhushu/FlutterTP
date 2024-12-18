import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/tweeCardText.dart';
import 'package:flutter_tp_moi/components/tweetCardActions.dart';
import 'package:flutter_tp_moi/components/tweetCardImage.dart';

class TweetCard extends StatelessWidget{

final String authorName;
final String tweetText;
final String imageURL;
final String postTime;

  const TweetCard({
    required this.authorName,
    required this.tweetText,
    required this.imageURL,
    required this.postTime,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEDEDF3), // fond du tweetCard
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TweetImage(imageURL: imageURL),
                const SizedBox(width: 16),
                TweetText(authorName: authorName,postTime: postTime, tweetText: tweetText,),
              ],
            ),
            const SizedBox(height: 16),
            CardActions(),
          ],
        ),
      ),
    );
  }
}