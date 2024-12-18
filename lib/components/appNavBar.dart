import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF58B0F0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: const [
          IconButton(onPressed: null, icon: Icon(Icons.edit)),
          SizedBox(width: 20),
          IconButton(onPressed: null, icon: Icon(Icons.home)),
          SizedBox(width: 20),
          IconButton(onPressed: null, icon: Icon(Icons.search))
        ],
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(100.0);
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
