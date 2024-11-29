import 'package:flutter/material.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/row_update.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/search_sub_conatiner.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/sub_container.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(),
        RowUpdate(
          title: 'Update',
        ),
        SubContainer(),
        SearchSubContainer(),
      ],
    );
  }
}
