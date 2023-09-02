class Category {
  final String title, image;

  Category({required this.title, required this.image});
}

// list of products
// for our demo
List<Category> products = [
  Category(
    title: "Classic Leather Arm Chair",
    image: "assets/images/Item_1.png",
  ),
  Category(
   title: "Poppy Plastic Tub Chair",
    image: "assets/images/Item_2.png",
  ),
  Category(
    title: "Bar Stool Chair",
    image: "assets/images/Item_3.png",
  ),
];
