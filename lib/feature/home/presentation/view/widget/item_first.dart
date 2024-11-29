import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/constant/constant.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/is_search.dart';

class Item extends StatefulWidget {
  const Item({super.key, required this.title});
  final String title;
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, left: 18.0, right: 18.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isSearch = !isSearch;
                  });
                },
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: isSearch
                      ? const IsSearch()
                      : Row(
                          key: const ValueKey(1),
                          children: [
                            Text(
                              widget.title,
                              style: Styles.textStyle16,
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              'asset/images/Search.svg',
                              height: 24,
                              width: 24,
                            ),
                          ],
                        ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: kPrimaryColor,
              ),
              child: Center(
                child: Icon(
                  isSearch
                      ? Icons.keyboard_arrow_down_outlined
                      : Icons.keyboard_arrow_up_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
