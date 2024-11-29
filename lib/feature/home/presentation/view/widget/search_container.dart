import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
        width: 222,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              "asset/images/Search.svg",
              height: 16,
              width: 16,
            ),
            const SizedBox(
              width: 9,
            ),
            Text(
              "Search",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
