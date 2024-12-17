import 'package:flutter/material.dart';

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