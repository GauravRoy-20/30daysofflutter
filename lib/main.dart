import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/home_page.dart';
import 'package:learn_flutter/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({super.key});
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => const HomePage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
