import 'package:flutter/material.dart';
import 'package:hiring_task/feature/home/data/models/list_drawer.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/item_list_menu.dart';

class ListDrawe extends StatelessWidget {
  const ListDrawe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listDrawer.length,
      itemBuilder: (BuildContext context, int index) {
        return ItemListMenu(
          listDrawer: listDrawer[index],
        );
      },
    );
  }
}
