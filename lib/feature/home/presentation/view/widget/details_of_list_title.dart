import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/data/models/list_drawer.dart';

class DetailsOfListTitle extends StatelessWidget {
  const DetailsOfListTitle({super.key, required this.listDrawer});
  final ListDrawer listDrawer;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      title: Row(
        children: [
          SvgPicture.asset(
            listDrawer.image,
            height: 20,
            width: 20,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            listDrawer.title,
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
