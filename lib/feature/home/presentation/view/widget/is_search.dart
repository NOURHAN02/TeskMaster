import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class IsSearch extends StatelessWidget {
  const IsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            height: 24,
            width: 222,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'asset/images/Search.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Test project",
                  style: Styles.textStyle9,
                ),
                const Spacer(),
                const Icon(Icons.close)
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Colors.white,
              border: Border.all(color: Colors.black),
            ),
            child: const Row(
              children: [
                Text(
                  "10",
                  style: Styles.textStyle14,
                ),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          ),
        )
      ],
    );
  }
}
