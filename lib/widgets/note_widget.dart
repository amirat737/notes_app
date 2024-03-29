import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/constants.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const EditNoteView();
      }));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: grey24,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'Study',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'I will study graphics subject within 3 hours from 7 to 10 pm',
                  style: TextStyle(
                    color: grey8,
                    fontSize: 15,
                  ),
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.trash,
                color: white,
              ),
            ),
            Text(
              'May 21, 2024',
              style: TextStyle(color: grey8, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
