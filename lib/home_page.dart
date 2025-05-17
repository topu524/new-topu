import 'package:flutter/material.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'converter_page.dart';
import 'gridview_page.dart';
import 'listview_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage())),
            child: const Text('Login Page'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RegistrationPage())),
            child: const Text('Registration Page'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ConverterPage())),
            child: const Text('Converter Page'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const GridviewPage())),
            child: const Text('Grid View Page'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ListviewPage())),
            child: const Text('List View Page'),
          ),
        ],
      ),
    );
  }
}
