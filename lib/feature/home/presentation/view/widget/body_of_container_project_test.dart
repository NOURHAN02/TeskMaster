import 'package:flutter/material.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/apply_filter.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/counter_continer.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/customer_text_project.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/list_test_project.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/row_test_project_name.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/search_container.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/status_row.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/text_Icon.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/time_table.dart';

class BodyOfContainerProjectText extends StatelessWidget {
  const BodyOfContainerProjectText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TestProjectDown(),
        Row(
          children: [
            SearchContainer(),
            CountContainer(),
          ],
        ),
        RowTestProject(),
        Align(alignment: Alignment.center, child: TimeTable()),
        StatusRow(),
        Align(alignment: Alignment.center, child: ApplyFilter()),
        Divider(),
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              TextICon(
                text: 'Research name',
              ),
              Spacer(),
              TextICon(text: "Status"),
            ],
          ),
        ),
        Expanded(child: ListTestProject()),
      ],
    );
  }
}

class WithOutTime extends StatelessWidget {
  const WithOutTime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TestProjectDown(),
        Row(
          children: [
            SearchContainer(),
            CountContainer(),
          ],
        ),
        RowTestProject(),
        Divider(),
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              TextICon(
                text: 'Research name',
              ),
              Spacer(),
              TextICon(text: "Status"),
            ],
          ),
        ),
        Expanded(child: ListTestProject()),
      ],
    );
  }
}
