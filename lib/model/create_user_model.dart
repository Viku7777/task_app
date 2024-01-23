// To parse this JSON data, do
//
//     final createUserModel = createUserModelFromJson(jsonString);

import 'dart:convert';

CreateUserModel createUserModelFromJson(dynamic str) =>
    CreateUserModel.fromJson(json.decode(str));

dynamic createUserModelToJson(CreateUserModel data) =>
    json.encode(data.toJson());

class CreateUserModel {
  dynamic message;
  User? user;

  CreateUserModel({
    this.message,
    this.user,
  });

  factory CreateUserModel.fromJson(Map<dynamic, dynamic> json) =>
      CreateUserModel(
        message: json["message"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "message": message,
        "user": user?.toJson(),
      };
}

class User {
  dynamic id;
  dynamic mobileNumber;
  int? v;
  DateTime? createdAt;
  bool? isVerified;
  dynamic otp;
  dynamic profileImage;
  dynamic role;
  int? wallet;

  User({
    this.id,
    this.mobileNumber,
    this.v,
    this.createdAt,
    this.isVerified,
    this.otp,
    this.profileImage,
    this.role,
    this.wallet,
  });

  factory User.fromJson(Map<dynamic, dynamic> json) => User(
        id: json["_id"],
        mobileNumber: json["mobileNumber"],
        v: json["__v"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        isVerified: json["isVerified"],
        otp: json["otp"],
        profileImage: json["profileImage"],
        role: json["role"],
        wallet: json["wallet"],
      );

  Map<dynamic, dynamic> toJson() => {
        "_id": id,
        "mobileNumber": mobileNumber,
        "__v": v,
        "createdAt": createdAt?.toIso8601String(),
        "isVerified": isVerified,
        "otp": otp,
        "profileImage": profileImage,
        "role": role,
        "wallet": wallet,
      };
}
