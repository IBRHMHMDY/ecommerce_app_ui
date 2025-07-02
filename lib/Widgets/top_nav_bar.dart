import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool isTitle;
  final List<Widget> actions;
  const TopNavBar({super.key, required this.title, required this.isTitle, required this.actions
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: isTitle,
      actions: actions,
    );
  }
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
