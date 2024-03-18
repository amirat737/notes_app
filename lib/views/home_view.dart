import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/widgets/add_note_widget.dart';
import 'package:notes/widgets/note_widget.dart';
import 'package:notes/widgets/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: cyan,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor:grey24,
              context: context,
              builder: (context) {
                return const AddNoteWidget();
              });
        },
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SearchWidget(),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
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
