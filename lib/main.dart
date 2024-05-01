import 'package:answers_app/ui/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const AnswersApp(),
  );
}

class AnswersApp extends StatelessWidget {
  const AnswersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
