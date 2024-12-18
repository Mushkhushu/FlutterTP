import 'package:flutter/material.dart';

class CardActions extends StatelessWidget{
  const CardActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        IconButton(onPressed: null, icon: Icon(Icons.reply)),
        IconButton(onPressed: null, icon: Icon(Icons.forward)),
        IconButton(onPressed: null, icon: Icon(Icons.star)),
      ],
    );
  }
}