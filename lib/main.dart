import 'package:flutter/material.dart';
import 'package:projekitc1/pages/home.dart';

void main() {
  MyApp app = const MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    HomePage homePage = HomePage();
    MaterialApp materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage,
    );
    return materialApp;
  }
}
