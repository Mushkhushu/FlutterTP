import 'package:flutter/material.dart';

class TweetText extends StatelessWidget {
  const TweetText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Amstramgram@TrucMuche',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                '50sec ago',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 10),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Ceci est un foTweet avec des mots qui n\'ont aucun sens, les uns à la suite des autres pour essayer de prendre de la place sur l\'écran et de meubler.',
          ),
        ],
      ),
    );
  }
}