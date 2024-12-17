import 'package:flutter/material.dart';
import 'package:flutter_tp_moi/pageConstruct/body.dart';
import 'package:flutter_tp_moi/pageConstruct/footer.dart';
import 'package:flutter_tp_moi/pageConstruct/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoTweeter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AppPage(),
    );
  }
}

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppHeader(),
        body: AppBody(),
        bottomNavigationBar: AppFooter()
    );
  }
}

