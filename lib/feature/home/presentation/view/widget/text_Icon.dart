import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class TextICon extends StatelessWidget {
  const TextICon({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 7, right: 18.0),
      child: Row(
        children: [
          Text(
            text,
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
          const SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            "asset/images/arrow_icon.svg",
            height: 13,
            width: 12,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
