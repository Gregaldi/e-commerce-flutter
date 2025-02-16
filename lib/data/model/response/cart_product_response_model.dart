class CartProductResponseModel {
  String? id;
  String? title;
  String? price;
  String? description;
  String? category;
  String? image;
  int? quantity;
  Rating? rating;

  CartProductResponseModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
    this.quantity,
  });

  CartProductResponseModel copyWith({
    int? id,
    String? title,
    String? category,
    double? price,
    String? description,
    String? image,
    Rating? rating,
    int? quantity,
  }) {
    return CartProductResponseModel(
      id: this.id,
      title: title ?? this.title,
      category: category ?? this.category,
      price: this.price,
      description: description ?? this.description,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      quantity: quantity ?? this.quantity,
    );
  }

  CartProductResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    title = json['title'];
    price = json['price'].toString();
    description = json['description'];
    category = json['category'];
    image = json['image'];
    quantity = json['quantity'];
    rating =
        json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;
    data['quantity'] = this.quantity;

    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    return data;
  }
}

class Rating {
  String? rate;
  String? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'].toString();
    count = json['count'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = this.rate;
    data['count'] = this.count;
    return data;
  }
}
