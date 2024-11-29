import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/bottom_container.dart';

class StatusRow extends StatelessWidget {
  const StatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "Status: ",
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
          const BottomContainer(
            color: Colors.green,
            text: 'Completed',
          ),
          const BottomContainer(
            color: Colors.orange,
            text: 'Delayed',
          ),
          const BottomContainer(
            color: Colors.blue,
            text: 'On Going',
          ),
          const BottomContainer(
            color: Colors.purple,
            text: 'On Hold',
          ),
        ],
      ),
    );
  }
}
