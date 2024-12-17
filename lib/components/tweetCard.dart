import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/tweetCardActions.dart';
import 'package:flutter_tp_moi/components/tweetCardImage.dart';
import 'package:flutter_tp_moi/components/tweeCardText.dart';

class TweetCard extends StatelessWidget{
  const TweetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEDEDF3),
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
                        TweetImage(),
                        const SizedBox(width: 16),
                        TweetText(),
                      ],
                    ),
                    const SizedBox(height: 16),
                    CardActions(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}