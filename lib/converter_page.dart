import 'package:flutter/material.dart';

class ConverterPage extends StatelessWidget {
  const ConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Converter"),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text(
          "Unit Converter Coming Soon!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
