import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        HeaderButton(title: "Am"),
        SizedBox(width: 8), // Espacement entre les boutons
        HeaderButton(title: "Stram"),
        SizedBox(width: 8), // Espacement entre les boutons
        HeaderButton(title: "Gram"),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class HeaderButton extends StatelessWidget {
  final String title;

  const HeaderButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(title),
    );
  }
}
