import 'package:flutter/material.dart';

class TweetText extends StatelessWidget {
  final String authorName;
  final String tweetText;
  final String postTime;

  const TweetText({
    required this.authorName,
    required this.postTime,
    required this.tweetText,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            authorName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                postTime,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 10),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            tweetText,
          ),
        ],
      ),
    );
  }
}