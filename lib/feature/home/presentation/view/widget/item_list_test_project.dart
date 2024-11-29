import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/bottom_container.dart';

class ItemListTextProject extends StatelessWidget {
  const ItemListTextProject({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18.0,
        right: 18.0,
        top: 10.0,
        bottom: 5.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "First Research Project",
                style: Styles.textStyle14,
              ),
              const Spacer(),
              Status(index),
            ],
          ),
          const Divider(
            thickness: 0,
          ),
        ],
      ),
    );
  }
}

Widget Status(int index) {
  switch (index) {
    case 0:
    case 3:
    case 4:
    case 5:
      return const BottomContainer(
        color: Colors.blue,
        text: 'On Going',
      );
    case 1:
      return const BottomContainer(
        color: Colors.orange,
        text: 'Delayed',
      );
    case 2:
      return const BottomContainer(
        color: Colors.green,
        text: 'Completed',
      );
    default:
      return const BottomContainer(
        color: Colors.purple,
        text: 'On Hold',
      );
  }
}
