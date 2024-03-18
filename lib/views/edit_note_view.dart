import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/widgets/text_field_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: IconButton(onPressed: () {}, icon: const Icon(Icons.check)),
        titleSpacing: screenWidth - 110,
        backgroundColor: black,
        surfaceTintColor:black
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFieldWidget(
              hint: 'Title',
            ),
            TextFieldWidget(
              hint: 'Start typing',
              fontSize: 15,
              maxLines: 10,
            ),
          ],
        ),
      ),
    );
  }
}
