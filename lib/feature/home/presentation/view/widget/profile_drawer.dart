import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/customer_image.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: kMenuColor,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 35.0),
      child: Row(
        children: [
          const CustomerImage(),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mohsin Faraz",
                  style: Styles.textStyle20.copyWith(color: Colors.white)),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white),
                child: const Text("Senior Research Associate",
                    style: Styles.textStyle12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
