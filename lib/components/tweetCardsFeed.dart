import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/tweetCard.dart';

class TweetCardFeed extends StatelessWidget{

  TweetCardFeed({super.key});

  final List<TweetCard> tweets = [
    TweetCard(authorName: "Mojotito",
        tweetText: "Aliquam tincidunt efficitur lectus, in pretium dui scelerisque vel. Praesent tempor urna orci, sit amet feugiat arcu luctus sed. Nullam in eleifend augue. Donec rutrum enim vitae scelerisque bibendum. Ut mollis augue nulla, non interdum libero varius ut. Curabitur at euismod nunc. Pellentesque sed massa eleifend, bibendum dolor faucibus, porttitor nulla. Donec a fermentum velit. Vestibulum mi ante, lobortis ac interdum ac, tincidunt id odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam aliquam fringilla ornare. Donec bibendum lorem vel justo porta pretium. Curabitur sit amet velit magna. Nullam sed tincidunt dolor, eu eleifend nisl. Curabitur ultricies id ex nec rhoncus.",
        imageURL: "/images/eldenring.jpg",
        postTime: "50sec ago"),
    TweetCard(authorName: "trucMuche",
        tweetText: "Nullam porttitor placerat vestibulum. Curabitur accumsan purus et velit vehicula faucibus. In in nulla id dui scelerisque volutpat. Aliquam accumsan turpis a mauris euismod pellentesque. Sed purus quam, accumsan vitae quam nec, euismod tincidunt purus. Nunc vitae convallis massa. Suspendisse suscipit libero ut fringilla imperdiet.",
        imageURL: "/images/ekko.jpg",
        postTime: "12sec ago"),
    TweetCard(authorName: "chose",
        tweetText: "In pretium diam nec vehicula varius. Nullam interdum, mi ut volutpat auctor, neque purus mollis mi, nec lacinia massa tortor sed libero. Morbi vestibulum diam id quam posuere blandit. In sed ex at nunc pulvinar aliquet in at dui. Duis nulla justo, accumsan quis ultrices auctor, ultricies vel urna. Nam at scelerisque mauris. Nulla finibus vestibulum pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris velit nunc, ullamcorper non viverra id, ultrices vitae libero. Nullam ac bibendum tellus. Vestibulum maximus molestie nulla nec cursus. Fusce pulvinar nisi a magna volutpat, molestie pulvinar nisi feugiat. Phasellus nec urna ut neque fringilla sagittis in quis nunc. Aenean elementum, purus bibendum varius iaculis, nulla tellus tempor ligula, id commodo quam urna eget lacus. Maecenas vitae elementum arcu, vel blandit justo. Nam tristique, lacus ac accumsan tincidunt, diam nulla convallis massa, quis lobortis ligula dui vitae ipsum.",
        imageURL: "/images/chat.jpg",
        postTime: "4sec ago"),
    TweetCard(authorName: "banane",
        tweetText: "Nunc scelerisque quam sed posuere consequat. Donec ultrices ex sed iaculis elementum. Etiam lacinia, arcu in semper sagittis, mauris ligula fringilla diam, non volutpat purus ante non lorem. Duis elementum ante in commodo accumsan. Donec quis interdum eros, eu interdum libero. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris eu suscipit augue. Suspendisse potenti. Pellentesque pharetra velit risus, et efficitur quam cursus eget.",
        imageURL: "/images/pigeons.jpg",
        postTime: "yesterday")
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