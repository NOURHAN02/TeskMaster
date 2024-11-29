import 'package:flutter/material.dart';

class ImageCircle extends StatelessWidget {
  const ImageCircle({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: 15,
    );
  }
}
