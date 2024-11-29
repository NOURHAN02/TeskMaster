import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class CountContainer extends StatelessWidget {
  const CountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
        width: 77,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Text(
              "10",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
