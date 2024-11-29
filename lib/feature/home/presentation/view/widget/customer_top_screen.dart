import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/customer_text_project.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/list_card.dart';

class CustomerTopScreen extends StatelessWidget {
  const CustomerTopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double width = screenWidth;
    double height = screenHeight * 0.28;
    return Container(
      width: width,
      height: height,
      color: kPrimaryColor,
      child: const Column(
        children: [
          TestProject(),
          ListCard(),
        ],
      ),
    );
  }
}
