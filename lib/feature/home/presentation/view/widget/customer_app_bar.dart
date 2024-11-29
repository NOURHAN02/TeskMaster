import 'package:flutter/material.dart';

class CustomerAppbar extends StatelessWidget {
  const CustomerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset("asset/images/img.png"),
      ),
    );
  }
}
