import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class RowUpdate extends StatelessWidget {
  const RowUpdate({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            'asset/images/arrow_icon.svg',
            height: 11,
            width: 8,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
