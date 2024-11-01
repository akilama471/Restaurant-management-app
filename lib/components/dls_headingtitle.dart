import 'package:flutter/material.dart';

class HeadingTitile extends StatelessWidget {
  final String title;

  const HeadingTitile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 99, 98, 98),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          )),
    );
  }
}
