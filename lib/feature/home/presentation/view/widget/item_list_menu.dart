import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/data/models/list_drawer.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/sub_item_list_menu.dart';

class ItemListMenu extends StatefulWidget {
  const ItemListMenu({super.key, required this.listDrawer});
  final ListDrawer listDrawer;

  @override
  State<ItemListMenu> createState() => _ItemListMenuState();
}

class _ItemListMenuState extends State<ItemListMenu> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: SvgPicture.asset(
        widget.listDrawer.image,
        height: 20,
        width: 20,
      ),
      title: Text(
        widget.listDrawer.title,
        style: Styles.textStyle16
            .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
      ),
      trailing: Icon(
        _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
      onExpansionChanged: (bool expanding) {
        setState(() {
          _isExpanded = expanding;
        });
      },
      children: [
        SubItemListMeun(
          listDrawer: widget.listDrawer.subItem ?? [],
        ),
      ],
    );
  }
}
// ListTile(
// title: Row(
// children: [
// SvgPicture.asset(
// listDrawer.image,
// height: 20,
// width: 20,
// ),
// const SizedBox(width: 30,),
// Text(listDrawer.title,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500,color: Colors.white),),
// const Spacer(),
// SvgPicture.asset(
// "asset/images/Vector (Stroke).svg",
// height: 8,
// width: 14,
// ),
//
// ],
// ),
// onTap: () {
// SubItemListMeun(listDrawer: listDrawer.subItem!,);
//
//
// },
// );
