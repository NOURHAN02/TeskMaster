import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/presentation/view/home_view.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/customer_app_bar.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/menu.dart';

class NavigatorBottombarr extends StatefulWidget {
  const NavigatorBottombarr({super.key});

  @override
  State<NavigatorBottombarr> createState() => _NavigatorBottombarrState();
}

class _NavigatorBottombarrState extends State<NavigatorBottombarr> {
  int _currentIndex = 0;
  List<Widget> page = [
    const HomeView(),
    const HomeView(),
    const HomeView(),
    const HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CustomerAppbar(),
          ),
        ],
      ),
      drawer: const Menu(),
      body: page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle:
            Styles.textStyle12.copyWith(color: kTextNavigatorBottom),
        selectedLabelStyle: Styles.textStyle12.copyWith(color: Colors.blue),
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("asset/images/home-2.svg",
                height: 23, width: 23, color: Colors.black),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("asset/images/Layer_11.svg",
                height: 23, width: 23, color: Colors.black),
            label: "Quick Action",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("asset/images/Layer_1 (4).svg",
                height: 23, width: 23, color: Colors.black),
            label: "Recent Discussion",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("asset/images/information.svg",
                height: 23, width: 23, color: Colors.black),
            label: "Need Help",
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
