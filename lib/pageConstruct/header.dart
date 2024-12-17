import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/components/appNavBar.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0xFF58B0F0),
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: const Text(
            "FoTweeter !",
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0), // Hauteur du AppNavBar
          child: AppNavBar(),
        )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
