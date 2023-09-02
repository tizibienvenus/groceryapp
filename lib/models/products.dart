class Product {
  final int id, price;
  final String title, description, image;
  final bool liked;

  Product({required this.id, required this.price, required this.title, required this.description, required this.image, required this.liked});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Orange",
    image: "assets/images/banana.png",
    description:
    "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: true,
  ),
  Product(
    id: 4,
    price: 68,
    title: "Garlic",
    image: "assets/images/banana1.png",
    description:
    "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: false,
  ),
  Product(
    id: 9,
    price: 39,
    title: "Brocoli",
    image: "assets/images/banana2.png",
    description:
    "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: false,

  ),
  Product(
    id: 9,
    price: 39,
    title: "Red Oignon",
    image: "assets/images/banana3.png",
    description:
    "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: false,
  ),
  Product(
    id: 9,
    price: 39,
    title: "Banana",
    image: "assets/images/banana4.png",
    description:
    "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: true,
  ),
  Product(
    id: 9,
    price: 39,
    title: "Tomato",
    image: "assets/images/banana.png",
    description:
    "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: false,
  ),
  Product(
    id: 9,
    price: 39,
    title: "Djinja",
    image: "assets/images/banana.png",
    description:
    "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: true,
  ),
  Product(
    id: 9,
    price: 39,
    title: "Chou",
    image: "assets/images/banana.png",
    description:
    "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: false,
  ),
  Product(
      id: 9,
      price: 39,
      title: "Pomme",
      image: "assets/images/banana.png",
      description:
      "Lorem Ipsum dolor sit amet, consectetur adipiscing elt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Eiusmod tempor incididunt ut labore et dolore magna aliqua, Ut enim ad minim veniam",
    liked: false,
  ),
];
