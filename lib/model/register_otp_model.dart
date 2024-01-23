// To parse this JSON data, do
//
//     final registerOtpModel = registerOtpModelFromJson(jsonString);

import 'dart:convert';

RegisterOtpModel registerOtpModelFromJson(String str) =>
    RegisterOtpModel.fromJson(json.decode(str));

String registerOtpModelToJson(RegisterOtpModel data) =>
    json.encode(data.toJson());

class RegisterOtpModel {
  String? message;
  String? token;
  User? user;

  RegisterOtpModel({
    this.message,
    this.token,
    this.user,
  });

  factory RegisterOtpModel.fromJson(Map<String, dynamic> json) =>
      RegisterOtpModel(
        message: json["message"],
        token: json["token"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "token": token,
        "user": user?.toJson(),
      };
}

class User {
  String? id;
  String? mobileNumber;
  int? v;
  DateTime? createdAt;
  bool? isVerified;
  String? otp;
  dynamic profileImage;
  String? role;
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

  factory User.fromJson(Map<String, dynamic> json) => User(
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

  Map<String, dynamic> toJson() => {
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
