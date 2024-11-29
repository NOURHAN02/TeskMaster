import 'package:flutter/material.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/item_list_test_project.dart';

class ListTestProject extends StatelessWidget {
  const ListTestProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 7,
          itemBuilder: (context, index) {
            return ItemListTextProject(
              index: index,
            );
          }),
    );
  }
}
