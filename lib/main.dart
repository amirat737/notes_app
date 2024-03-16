import 'package:flutter/material.dart';
import 'package:notes/views/home_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff000000),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Gilroy-Regular',
          ),
        ),
      ),
      home: const HomeView(),
    );
  }
}