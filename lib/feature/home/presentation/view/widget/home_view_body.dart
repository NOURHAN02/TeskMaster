import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/customer_app_bar.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/customer_top_screen.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/item_details_first.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/item_in%20home.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/menu.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/table_data.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomerTopScreen(),
            ItemInHome(
              title: 'Recently assigned',
              home: ItemDetailsHome(
                title: 'Recently assigned',
                widget: FirstWidget(),
              ),
            ),
            ItemInHome(
              title: 'Tasks Quick View',
              home: ItemDetailsHome(
                title: 'Tasks Quick View',
                widget: TableData(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
