import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: Color(0xff242424),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Column(
        crossAxisAlignment:CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding:EdgeInsets.all(0),
            title: Text('Study',style: TextStyle(fontSize: 20),),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'I will study graphics subject within 3 hours from 7 to 10 pm',
                style: TextStyle(
                  color: Color(0xff888888),
                  fontSize: 15,
                ),
              ),
            ),
            trailing: Icon(FontAwesomeIcons.trash,color: Color(0xffffffff),),
          ),
          Text(
            'May 21, 2024',
            style: TextStyle(
              color: Color(0xff888888),
              fontSize: 15
            ),
          ),
        ],
      ),
    );
  }
}
