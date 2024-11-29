import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/test_project_details.dart';

class TestProject extends StatelessWidget {
  const TestProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 16.0, right: 16.0, bottom: 15.0),
      child: Container(
        height: 48,
        width: 343,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0),
          child: Row(
            children: [
              SvgPicture.asset(
                "asset/images/Search.svg",
                height: 16,
                width: 16,
              ),
              const SizedBox(
                width: 9,
              ),
              Text(
                "Test Project with Mohsin",
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const TestProjectDetails();
                    },
                  );
                },
                child: SvgPicture.asset(
                  "asset/images/Group 10496.svg",
                  height: 16,
                  width: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TestProjectDown extends StatelessWidget {
  const TestProjectDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "asset/images/Search.svg",
            height: 16,
            width: 16,
          ),
          const SizedBox(
            width: 9,
          ),
          Text(
            "Test Project with Mohsin",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_up,
            size: 24,
          )
        ],
      ),
    );
  }
}
