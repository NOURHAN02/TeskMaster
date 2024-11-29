import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class ApplyFilter extends StatelessWidget {
  const ApplyFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 311,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
          child: Text(
        "Apply Filter",
        style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
      )),
    );
  }
}
