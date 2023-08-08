import 'package:flutter/material.dart';

class DlsActionbtn extends StatelessWidget {
  final String title;
  final Function onPressAction;
  final double? width;
  final Color backColr;
  final Color foreColr;
  const DlsActionbtn(
      {Key? key,
      required this.title,
      required this.onPressAction,
      this.width,
      this.backColr = Colors.white,
      this.foreColr = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        width: width ?? double.infinity,
        child: ElevatedButton(
          onPressed: () => onPressAction,
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(foreColr),
              backgroundColor: MaterialStateProperty.all<Color>(backColr),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ))),
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
              )),
        ));
  }
}
