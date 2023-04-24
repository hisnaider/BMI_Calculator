import 'package:bmi_calculator/screens/result.dart';
import 'package:flutter/material.dart';

class Scree2 extends StatelessWidget {
  const Scree2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("teste"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            child: const Text("Home"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/result");
            },
            child: const Text("Resultado"),
          ),
        ],
      ),
    );
  }
}
