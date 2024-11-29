import 'package:flutter/material.dart';
import 'package:hiring_task/feature/home/data/models/list_drawer.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/details_of_list_title.dart';

class SubItemListMeun extends StatelessWidget {
  const SubItemListMeun({super.key, required this.listDrawer});
  final List<ListDrawer> listDrawer;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listDrawer.length,
      itemBuilder: (BuildContext context, int index) {
        return DetailsOfListTitle(
          listDrawer: listDrawer[index],
        );
      },
    );
  }
}
