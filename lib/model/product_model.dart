// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  String? status;
  List<Datum>? data;

  ProductModel({
    this.status,
    this.data,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  String? id;
  String? name;
  int? quantity;
  double? price;
  String? description;
  List<String>? images;
  double? discountedPrice;
  String? category;
  String? subcategory;
  int? stock;
  List<dynamic>? details;
  int? numOfReviews;
  List<dynamic>? reviews;
  DateTime? createdAt;
  int? v;
  String? type;
  bool? isDiscount;
  int? discount;

  Datum({
    this.id,
    this.name,
    this.quantity,
    this.price,
    this.description,
    this.images,
    this.discountedPrice,
    this.category,
    this.subcategory,
    this.stock,
    this.details,
    this.numOfReviews,
    this.reviews,
    this.createdAt,
    this.v,
    this.type,
    this.isDiscount,
    this.discount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        quantity: json["quantity"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        discountedPrice: json["discountedPrice"]?.toDouble(),
        category: json["category"],
        subcategory: json["subcategory"],
        stock: json["stock"],
        details: json["details"] == null
            ? []
            : List<dynamic>.from(json["details"]!.map((x) => x)),
        numOfReviews: json["numOfReviews"],
        reviews: json["reviews"] == null
            ? []
            : List<dynamic>.from(json["reviews"]!.map((x) => x)),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        v: json["__v"],
        type: json["type"],
        isDiscount: json["isDiscount"],
        discount: json["discount"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "quantity": quantity,
        "price": price,
        "description": description,
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "discountedPrice": discountedPrice,
        "category": category,
        "subcategory": subcategory,
        "stock": stock,
        "details":
            details == null ? [] : List<dynamic>.from(details!.map((x) => x)),
        "numOfReviews": numOfReviews,
        "reviews":
            reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "__v": v,
        "type": type,
        "isDiscount": isDiscount,
        "discount": discount,
      };
}
