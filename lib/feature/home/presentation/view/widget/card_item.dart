import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiring_task/core/utils/styles/styles.dart';
import 'package:hiring_task/feature/home/data/models/card_model.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.cardItem});
  final CardModel cardItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10.0, left: 16.0, right: 16.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(6.0),
                topLeft: Radius.circular(6.0),
              ),
              color: Colors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  cardItem.image,
                  height: 33,
                  width: 71.7,
                ),
                const SizedBox(
                  width: 8.6,
                ),
                Text(
                  cardItem.number,
                  style: Styles.textStyle18,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
            decoration: const BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(6.0),
                bottomLeft: Radius.circular(6.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  cardItem.title,
                  textAlign: TextAlign.center,
                  style:
                      Styles.textStyle12.copyWith(fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
