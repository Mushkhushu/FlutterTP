import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF58B0F0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          HeaderButton(title: "Nouveau"),
          SizedBox(width: 8),
          HeaderButton(title: "Accueil"),
          SizedBox(width: 8),
          HeaderButton(title: "Rechercher"),
        ],
      ),
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
    return Expanded(
      child: FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.lightBlue.shade200),
        ),
        child: Text(title),
      ),
    );
  }
}
