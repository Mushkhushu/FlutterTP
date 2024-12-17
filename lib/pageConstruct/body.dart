import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFB5D4E1), // Fond général
      padding: const EdgeInsets.all(8.0),
      child: TweetCard(),
    );
  }
}


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

class TweetImage extends StatelessWidget{
  const TweetImage({super.key});

  @override
  Widget build(BuildContext context) {
   return SizedBox(
     width: 125,
     height: 125,
     child: Image.asset("images/eldenring.jpg"),
   );
  }
}

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

class CardActions extends StatelessWidget{
  const CardActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('Répondre',
            style: TextStyle(color: Colors.blue)),
        Text('Retweet', style: TextStyle(color: Colors.blue)),
        Text('Favoris', style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}