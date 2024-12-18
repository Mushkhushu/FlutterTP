import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/inscriptionFrom.dart';
import 'package:flutter_tp_moi/components/tweetCardsFeed.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InscriptionForm(),
        Expanded(
          child: TweetCardFeed(),
        )
      ],
    );
  }
}







