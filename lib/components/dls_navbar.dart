import 'package:flutter/material.dart';

class DlsNavbar extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget icon;

  const DlsNavbar({super.key, required this.menuList, required this.icon});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => menuList,
    );
  }
}
