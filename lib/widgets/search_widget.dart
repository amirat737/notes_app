import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenWidth / 7,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: const Color(0xff242424),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            style: TextStyle(
              fontSize: screenWidth / 20,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 9),
              hintStyle: const TextStyle(
                color: Color(0xff888888),
              ),
              hintText: 'Search notes',
              prefixIcon: Icon(
                Icons.search,
                color: const Color(0xff888888),
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
