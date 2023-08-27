import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.color, this.text, this.onTap});

  final Color? color;
  final String? text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
