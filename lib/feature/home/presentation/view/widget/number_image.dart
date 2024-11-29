import 'package:flutter/material.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/image_cicrle.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/table_data.dart';

class NumberImage extends StatelessWidget {
  const NumberImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ImageCircle(
          image: 'asset/images/Ellipse 14.png',
        ),
        Positioned(
            top: 7.5,
            left: 7.5,
            child: Text(
              "1+",
              style: TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
