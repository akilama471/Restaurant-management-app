import 'package:flutter/material.dart';

class DlsTextfield extends StatelessWidget {
  final String title;
  final String hint;
  final IconData icon;
  final TextEditingController? ctrl;
  final bool isMask;
  final TextInputType type;

  const DlsTextfield(
      {Key? key,
      this.ctrl,
      required this.title,
      required this.hint,
      required this.icon,
      required this.type,
      required this.isMask})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          height: 50,
          child: TextField(
            controller: ctrl,
            obscureText: isMask,
            keyboardType: type,
            style: const TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  icon,
                  color: const Color(0xfff44336),
                  size: 24,
                ),
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }
}
