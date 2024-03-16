import 'package:flutter/material.dart';
import 'package:notes/widgets/note_widget.dart';
import 'package:notes/widgets/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SearchWidget(),
            NoteWidget(),
          ],
        ),
      ),
    );
  }
}
