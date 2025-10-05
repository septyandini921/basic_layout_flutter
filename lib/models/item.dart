// lib/models/item.dart

class Item {
  String name;
  int price;
  int stock;
  double rating;
  String imagePath; // Menambah atribut untuk foto produk

  Item({
    required this.name,
    required this.price,
    required this.stock,
    required this.rating,
    required this.imagePath,
  });
}