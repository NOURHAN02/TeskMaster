import 'package:flutter/material.dart';
import 'package:hiring_task/feature/home/presentation/view/home_view.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/navigator_bottomBarr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const NavigatorBottombarr(),
    );
  }
}
