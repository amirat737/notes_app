import 'package:flutter/material.dart';
import 'package:notes/widgets/note_widget.dart';
import 'package:notes/widgets/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SearchWidget(),
            // NoteWidget()
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 0),
                itemBuilder: ((context, index) {
                  return const NoteWidget();
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
