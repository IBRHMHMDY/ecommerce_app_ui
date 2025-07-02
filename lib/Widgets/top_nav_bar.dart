import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool centerTitle;
  final List<Widget> actions;
  const TopNavBar({super.key, required this.title, required this.centerTitle, required this.actions
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle,
      actions: actions,
    );
  }
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
