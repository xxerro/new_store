class Products {
  String name;
  double price;
  String imagePath;
  String details;
  String size;
  int quantity;

  Products({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.details,
    required this.size,
    this.quantity = 1,
  });
}
