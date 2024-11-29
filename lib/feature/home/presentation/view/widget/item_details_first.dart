import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/item_first.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/row_update.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/search_sub_conatiner.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/sub_container.dart';

class ItemDetailsHome extends StatelessWidget {
  const ItemDetailsHome({super.key, required this.title, required this.widget});
  final String title;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 343,
        decoration: BoxDecoration(
          color: kSecondColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Item(
              title: title,
            ),
            widget
          ],
        ),
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const Divider(),
        RowUpdate(
          title: 'Update',
        ),
        const SubContainer(),
        const SearchSubContainer(),
      ],
    );
  }
}
