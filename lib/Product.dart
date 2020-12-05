

class Product {
  String name;
  double price;
  int id;
  Product({this.name, this.price, this.id});
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
    );
  }
}