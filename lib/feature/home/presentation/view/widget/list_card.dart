import 'package:flutter/material.dart';
import 'package:hiring_task/feature/home/data/models/card_model.dart';
import 'package:hiring_task/feature/home/presentation/view/widget/card_item.dart';

List<CardModel> cards = [
  CardModel(
      image: 'asset/images/Layer_1.svg',
      number: "1125",
      title: "User\nInvloved"),
  CardModel(
      image: 'asset/images/Layer_1 (1).svg',
      number: "1125",
      title: "Equipment\nAvailable"),
  CardModel(
      image: 'asset/images/Layer_1 (2).svg',
      number: "1125",
      title: "Tasks\nCompleted"),
];

class ListCard extends StatelessWidget {
  const ListCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SizedBox(
        height: 109,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return CardItem(
              cardItem: cards[index],
            );
          },
        ),
      ),
    );
  }
}
