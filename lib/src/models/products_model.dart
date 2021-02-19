class Product {
  final String id;
  final String image;
  final String title;
  final int price;
  final String description;

  Product({this.id, this.image, this.title, this.price, this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
    );
  }
}
