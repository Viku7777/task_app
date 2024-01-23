// To parse this JSON data, do
//
//     final loginOtpModel = loginOtpModelFromJson(jsonString);

import 'dart:convert';

LoginOtpModel loginOtpModelFromJson(String str) =>
    LoginOtpModel.fromJson(json.decode(str));

String loginOtpModelToJson(LoginOtpModel data) => json.encode(data.toJson());

class LoginOtpModel {
  String? message;
  User? user;
  String? token;

  LoginOtpModel({
    this.message,
    this.user,
    this.token,
  });

  factory LoginOtpModel.fromJson(Map<String, dynamic> json) => LoginOtpModel(
        message: json["message"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "user": user?.toJson(),
        "token": token,
      };
}

class User {
  String? id;
  String? mobileNumber;
  int? v;
  DateTime? createdAt;
  bool? isVerified;
  dynamic profileImage;
  String? role;
  int? wallet;

  User({
    this.id,
    this.mobileNumber,
    this.v,
    this.createdAt,
    this.isVerified,
    this.profileImage,
    this.role,
    this.wallet,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        mobileNumber: json["mobileNumber"],
        v: json["__v"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        isVerified: json["isVerified"],
        profileImage: json["profileImage"],
        role: json["role"],
        wallet: json["wallet"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "mobileNumber": mobileNumber,
        "__v": v,
        "createdAt": createdAt?.toIso8601String(),
        "isVerified": isVerified,
        "profileImage": profileImage,
        "role": role,
        "wallet": wallet,
      };
}
