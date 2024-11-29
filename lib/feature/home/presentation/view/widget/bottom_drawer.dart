import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class BottomDrawer extends StatelessWidget {
  const BottomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kMenuColor,
      height: 55,
      width: 310,
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.logout_outlined,
              color: kTextColorBottom,
            ),
            Text(
              "Sign Out",
              style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w500, color: kTextColorBottom),
            ),
          ],
        ),
      ),
    );
  }
}
