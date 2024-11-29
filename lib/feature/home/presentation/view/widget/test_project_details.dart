import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/body_of_container_project_test.dart';

class TestProjectDetails extends StatelessWidget {
  const TestProjectDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 70,
          left: MediaQuery.of(context).size.width / 2 - 343 / 2,
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: 343,
              height: 574,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const BodyOfContainerProjectText(),
            ),
          ),
        ),
      ],
    );
  }
}
