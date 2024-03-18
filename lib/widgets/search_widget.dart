import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenWidth / 7,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: grey24,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            style: TextStyle(
              fontSize: screenWidth / 20,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 9),
              hintStyle: const TextStyle(
                color: grey8,
              ),
              hintText: 'Search notes',
              prefixIcon: Icon(
                Icons.search,
                color: grey8,
                size: screenWidth / 15,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
