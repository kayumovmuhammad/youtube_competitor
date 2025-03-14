import 'package:flutter/material.dart';

class ActionForAppBar extends StatefulWidget {
  final Widget iconWidget;
  const ActionForAppBar({super.key, required this.iconWidget});

  @override
  State<ActionForAppBar> createState() => _ActionForAppBarState();
}

class _ActionForAppBarState extends State<ActionForAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: TextButton(
        onPressed: () {},
        child: widget.iconWidget,
      ),
    );
  }
}
