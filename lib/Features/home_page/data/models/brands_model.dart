class ProductsModel {
  final String image;
  final String? productName;
  final String productBrand;
  final double? price;
  final String? description;
  final double? rating;
    bool isFavorite;
  final int id;

  ProductsModel(
      {required this.image,
      this.price,
      this.productName,
      this.rating,
      required this.id,
      required this.isFavorite ,
      this.description,
      required this.productBrand});

  factory ProductsModel.fromJson(dynamic json) => ProductsModel(
    isFavorite: json['isFavorite'],
        image: json['image'],
        price: json['price'],
        productName: json['productName'],
        rating: json['rating'],
        id: json['id'],
        description: json['description'],
        productBrand: json['productBrand'],
      );

  Map<String, dynamic> toJson() => {
        'image': image,
        'price': price,
        'productName': productName,
        'rating': rating,
        'id': id,
        'description': description,
        'productBrand': productBrand,
    'isFavorite':isFavorite,
      };
}
