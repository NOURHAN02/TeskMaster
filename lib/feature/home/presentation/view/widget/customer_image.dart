import 'package:flutter/material.dart';

class CustomerImage extends StatelessWidget {
  const CustomerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("asset/images/img.png"),
    );
  }
}
