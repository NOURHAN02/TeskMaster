import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class RowTestProject extends StatelessWidget {
  const RowTestProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16.0, top: 10, bottom: 9),
      child: Row(
        children: [
          Text(
            "Project List",
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
          const Spacer(),
          SvgPicture.asset(
            "asset/images/icon_test_project.svg",
            height: 15,
            width: 21,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
