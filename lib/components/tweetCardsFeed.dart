import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/tweetCard.dart';

class TweetCardFeed extends StatelessWidget{
  TweetCardFeed({super.key});
  final List<TweetCard> tweets = [
    TweetCard(authorName: "Mojotito", tweetText: "blablablalbalbal", imageURL: "/images/eldenring.jpg", postTime: "50sec ago"),
    TweetCard(authorName: "trucMuche", tweetText: "bidulebidulebidulebidulebidulebidule", imageURL: "/images/ekko.jpg", postTime: "12sec ago"),
    TweetCard(authorName: "chose", tweetText: "blablagkzrjhizqgozgnzogerzgeh", imageURL: "/images/chat.jpg", postTime: "4sec ago"),
    TweetCard(authorName: "banane", tweetText: "grghneohrnerhehehra", imageURL: "/images/pigeons.jpg", postTime: "yesterday")
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFB3B3C1), // Fond du feed
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: tweets.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: tweets[index],
            );
          },
        ),
      ),
    );
  }
}