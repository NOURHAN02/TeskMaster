import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/item_details_first.dart';

class ItemInHome extends StatefulWidget {
  const ItemInHome({super.key, required this.title, required this.home});
  final String title;
  final Widget home;
  @override
  State<ItemInHome> createState() => _ItemInHomeState();
}

class _ItemInHomeState extends State<ItemInHome> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isTap = !isTap;
        });
      },
      child: !isTap
          ? Padding(
              padding:
                  const EdgeInsets.only(top: 18.0, left: 18.0, right: 18.0),
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                width: 343,
                height: 50,
                decoration: BoxDecoration(
                  color: kSecondColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Text(
                      widget.title,
                      style: Styles.textStyle16,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'asset/images/Search.svg',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: !isTap
                          ? const Icon(
                              Icons.keyboard_arrow_down,
                              size: 28,
                            )
                          : Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: kPrimaryColor,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.keyboard_arrow_up_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            )
          : widget.home,
    );
  }
}
