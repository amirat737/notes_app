import 'package:flutter/material.dart';
import 'package:notes/widgets/text_field_widget.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextFieldWidget(
              hint: 'Title',
            ),
            TextFieldWidget(
              hint: 'Start typing',
              fontSize: 15,
              maxLines: 10,
            ),
            // ElevatedButton(onPressed: (){}, child:  co)
          ],
        ),
      ),
    );
  }
}
