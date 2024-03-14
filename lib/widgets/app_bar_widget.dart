import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontSize: 32),
        ),
        const Spacer(),
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffffffff).withOpacity(0.1)),
          child: const Icon(
            Icons.search,
            color: Color(0xffffffff),
            size: 28,
          ),
        )
      ],
    );
  }
}
