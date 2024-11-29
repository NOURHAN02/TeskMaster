import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/List.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/bottom_drawer.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/profile_drawer.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: kPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Profile(),
          Expanded(child: ListDrawe()),
          BottomDrawer(),
        ],
      ),
    );
  }
}
