import 'package:flutter/material.dart';
import 'package:instgram/pages/homepage.dart';
import 'package:instgram/pages/login_page.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      // home: Homepage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.grey,
      fontFamily: GoogleFonts.lato().fontFamily,
      ),
      
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: '/home',
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => Homepage(),
        "/login": (context) => LoginPage(),
      } ,
    );
  }
}
