import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class SearchSubContainer extends StatelessWidget {
  const SearchSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        height: 50,
        width: 311,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: Colors.white),
        child: Row(
          children: [
            const Text(
              "To ensure your health safety...",
              style: Styles.textStyle14,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'asset/images/Search.svg',
                height: 24,
                width: 24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
