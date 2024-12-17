import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/AppNavBar.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "WHY !",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      bottom: AppNavBar(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
