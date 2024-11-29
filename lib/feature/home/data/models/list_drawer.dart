class ListDrawer {
  final String image;
  final String title;
  final List<ListDrawer>? subItem;
  final String? subImage;
  final String? subTittle;

  ListDrawer(
      {this.subItem,
      required this.image,
      required this.title,
      this.subImage,
      this.subTittle});
}

List<ListDrawer> listDrawer = [
  ListDrawer(image: "asset/images/Layer_4.svg", title: "Research", subItem: [
    ListDrawer(image: "asset/images/Layer_11.svg", title: "New Project"),
    ListDrawer(image: "asset/images/Layer_12.svg", title: "My Projects"),
  ]),
  ListDrawer(image: "asset/images/Layer_10.svg", title: "Team"),
  ListDrawer(image: "asset/images/Layer_5.svg", title: "Laboratory"),
  ListDrawer(image: "asset/images/Layer_6.svg", title: "Task"),
  ListDrawer(image: "asset/images/Layer_1 (3).svg", title: "Data"),
  ListDrawer(image: "asset/images/Layer_1 (4).svg", title: "Discussion"),
  ListDrawer(image: "asset/images/Layer_1 (5).svg", title: "Publish"),
  ListDrawer(image: "asset/images/Layer_1 (6).svg", title: "Expense"),
  ListDrawer(image: "asset/images/Layer_1 (7).svg", title: "Setting"),
  ListDrawer(image: "asset/images/Layer_1 (8).svg", title: "Ticketing")
];
