import 'package:flutter/material.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/bottom_container.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/image_cicrle.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/number_image.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/row_update.dart';

class TableData extends StatelessWidget {
  const TableData({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 20.0,
        headingRowColor: MaterialStateProperty.all(kSecondColor),
        columns: const [
          DataColumn(
              label: RowUpdate(
            title: 'Team name',
          )),
          DataColumn(label: RowUpdate(title: 'Creator')),
          DataColumn(label: RowUpdate(title: 'Assigned to')),
          DataColumn(label: RowUpdate(title: 'Deadline')),
          DataColumn(label: RowUpdate(title: 'Status')),
          DataColumn(label: RowUpdate(title: 'Action')),
        ],
        rows: List.generate(
          5,
          (index) {
            return DataRow(
              color: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  return Colors.white;
                },
              ),
              cells: const [
                DataCell(Text('Design Team')),
                DataCell(
                  ImageCircle(
                    image: 'asset/images/Ellipse 15.png',
                  ),
                ),
                DataCell(
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 0,
                        child: ImageCircle(
                          image: 'asset/images/Ellipse 12.png',
                        ),
                      ),
                      Positioned(
                        left: 16,
                        child: ImageCircle(
                          image: 'asset/images/Ellipse 13.png',
                        ),
                      ),
                      Positioned(
                        left: 30,
                        child: NumberImage(),
                      ),
                    ],
                  ),
                ),
                DataCell(Text('Dec 26, 2023')),
                DataCell(
                  BottomContainer(
                    color: Colors.blue,
                    text: 'On Going',
                  ),
                ),
                DataCell(
                  Row(
                    children: [
                      Icon(Icons.edit, color: Colors.grey),
                      SizedBox(width: 10),
                      Icon(Icons.message, color: Colors.grey),
                      SizedBox(width: 10),
                      Icon(Icons.folder, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
