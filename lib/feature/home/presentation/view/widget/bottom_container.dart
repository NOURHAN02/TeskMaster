import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key, required this.color, required this.text});
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: color,
        ),
        child: Text(
          text,
          style: Styles.textStyle9.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
