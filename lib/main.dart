import 'package:flutter/material.dart';
import 'screen/first_screen_data.dart';
import 'screen/second_screen_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Use named routes so we can pass arguments easily with pushNamed
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreenData(),
        '/secondData': (context) => const SecondScreenData(),
      },
    );
  }
}
