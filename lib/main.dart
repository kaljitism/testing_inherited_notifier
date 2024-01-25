import 'package:flutter/material.dart';
import 'package:testing_inherited_notifier/home_page.dart';

void main() {
  runApp(const OpacitySlider());
}

class OpacitySlider extends StatelessWidget {
  const OpacitySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
