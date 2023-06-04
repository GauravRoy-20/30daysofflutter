import 'package:flutter/material.dart';

import '../widgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Gaurav";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
      ),
      body: Center(
          child: Container(
              child: Text("Welcome to $days days of flutter by $name"))),
      drawer: MyDrawer(),
    );
  }
}
