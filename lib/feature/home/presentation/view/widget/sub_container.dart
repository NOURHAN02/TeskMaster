import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';

class SubContainer extends StatelessWidget {
  const SubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0))),
            child: const Text(
              textDirection: TextDirection.ltr,
              "Your Cheetah Noman Raza 115 / LHR has now picked up your order and is speeding your way. "
              "You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza 115 /LHR’s temperature in the morning and it was 98 degrees Fahrenheit.",
              style: Styles.textStyle14,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'asset/images/timer.svg',
                  height: 22,
                  width: 22,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Mon, 10 July 2022",
                  style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
