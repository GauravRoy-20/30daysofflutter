import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/home_page.dart';
import 'package:learn_flutter/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/utils/routes.dart';

void main() {
  runApp(const MyApp());
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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
