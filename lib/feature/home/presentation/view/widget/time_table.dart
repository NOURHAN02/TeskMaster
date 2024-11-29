import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 10.0, right: 10.0, left: 10.0, bottom: 10.0),
      width: 311,
      height: 93,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Deadline",
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 143,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.black, // لون الحدود
                      width: 1, // عرض الحدود
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          "Starting Date",
                          style: Styles.textStyle14,
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          "asset/images/timer.svg",
                          height: 25,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Until:",
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 143,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.black, // لون الحدود
                      width: 1, // عرض الحدود
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          "Ending Date",
                          style: Styles.textStyle14,
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          "asset/images/timer.svg",
                          height: 25,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
