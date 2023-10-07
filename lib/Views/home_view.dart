import 'package:flutter/material.dart';
import 'package:flutter_codepur1/Views/calculator_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        top: true,
        bottom: false,
        child: CalculatorView(),
      ),
    );
  }
}
