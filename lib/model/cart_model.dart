// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

CartModel cartModelFromJson(dynamic str) =>
    CartModel.fromJson(json.decode(str));

dynamic cartModelToJson(CartModel data) => json.encode(data.toJson());

class CartModel {
  Cart? cart;
  Totals? totals;

  CartModel({
    this.cart,
    this.totals,
  });

  factory CartModel.fromJson(Map<dynamic, dynamic> json) => CartModel(
        cart: json["cart"] == null ? null : Cart.fromJson(json["cart"]),
        totals: json["totals"] == null ? null : Totals.fromJson(json["totals"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "cart": cart?.toJson(),
        "totals": totals?.toJson(),
      };
}

class Cart {
  dynamic id;
  dynamic userId;
  List<Product>? products;
  dynamic code;
  dynamic couponDiscount;
  dynamic shippingAmount;
  dynamic subtotal;
  dynamic taxAmount;
  dynamic discountAmount;
  dynamic subtotalAmount;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic v;
  dynamic totalAmount;
  dynamic couponCode;
  List<dynamic>? dayOfWeek;
  dynamic frequency;
  List<dynamic>? specificDates;

  Cart({
    this.id,
    this.userId,
    this.products,
    this.code,
    this.couponDiscount,
    this.shippingAmount,
    this.subtotal,
    this.taxAmount,
    this.discountAmount,
    this.subtotalAmount,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.totalAmount,
    this.couponCode,
    this.dayOfWeek,
    this.frequency,
    this.specificDates,
  });

  factory Cart.fromJson(Map<dynamic, dynamic> json) => Cart(
        id: json["_id"],
        userId: json["userId"],
        products: json["products"] == null
            ? []
            : List<Product>.from(
                json["products"]!.map((x) => Product.fromJson(x))),
        code: json["code"],
        couponDiscount: json["couponDiscount"],
        shippingAmount: json["shippingAmount"],
        subtotal: json["subtotal"],
        taxAmount: json["taxAmount"],
        discountAmount: json["discountAmount"],
        subtotalAmount: json["subtotalAmount"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        totalAmount: json["totalAmount"],
        couponCode: json["couponCode"],
        dayOfWeek: json["dayOfWeek"] == null
            ? []
            : List<dynamic>.from(json["dayOfWeek"]!.map((x) => x)),
        frequency: json["frequency"],
        specificDates: json["specificDates"] == null
            ? []
            : List<dynamic>.from(json["specificDates"]!.map((x) => x)),
      );

  Map<dynamic, dynamic> toJson() => {
        "_id": id,
        "userId": userId,
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "code": code,
        "couponDiscount": couponDiscount,
        "shippingAmount": shippingAmount,
        "subtotal": subtotal,
        "taxAmount": taxAmount,
        "discountAmount": discountAmount,
        "subtotalAmount": subtotalAmount,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "totalAmount": totalAmount,
        "couponCode": couponCode,
        "dayOfWeek": dayOfWeek == null
            ? []
            : List<dynamic>.from(dayOfWeek!.map((x) => x)),
        "frequency": frequency,
        "specificDates": specificDates == null
            ? []
            : List<dynamic>.from(specificDates!.map((x) => x)),
      };
}

class Product {
  ProductId? productId;
  dynamic price;
  dynamic quantity;
  dynamic id;

  Product({
    this.productId,
    this.price,
    this.quantity,
    this.id,
  });

  factory Product.fromJson(Map<dynamic, dynamic> json) => Product(
        productId: json["productId"] == null
            ? null
            : ProductId.fromJson(json["productId"]),
        price: json["price"],
        quantity: json["quantity"],
        id: json["_id"],
      );

  Map<dynamic, dynamic> toJson() => {
        "productId": productId?.toJson(),
        "price": price,
        "quantity": quantity,
        "_id": id,
      };
}

class ProductId {
  dynamic id;
  dynamic name;
  dynamic quantity;
  dynamic price;
  dynamic description;
  List<dynamic>? images;
  dynamic discountedPrice;
  dynamic category;
  dynamic subcategory;
  dynamic stock;
  List<dynamic>? details;
  dynamic numOfReviews;
  List<dynamic>? reviews;
  DateTime? createdAt;
  dynamic v;
  dynamic type;
  bool? isDiscount;
  dynamic discount;

  ProductId({
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

  factory ProductId.fromJson(Map<dynamic, dynamic> json) => ProductId(
        id: json["_id"],
        name: json["name"],
        quantity: json["quantity"],
        price: json["price"],
        description: json["description"],
        images: json["images"] == null
            ? []
            : List<dynamic>.from(json["images"]!.map((x) => x)),
        discountedPrice: json["discountedPrice"],
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

  Map<dynamic, dynamic> toJson() => {
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

class Totals {
  dynamic subtotal;
  dynamic tax;
  dynamic shipping;
  dynamic total;

  Totals({
    this.subtotal,
    this.tax,
    this.shipping,
    this.total,
  });

  factory Totals.fromJson(Map<dynamic, dynamic> json) => Totals(
        subtotal: json["subtotal"],
        tax: json["tax"]?.toDouble(),
        shipping: json["shipping"],
        total: json["total"]?.toDouble(),
      );

  Map<dynamic, dynamic> toJson() => {
        "subtotal": subtotal,
        "tax": tax,
        "shipping": shipping,
        "total": total,
      };
}
