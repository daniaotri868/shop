import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_data.freezed.dart';
part 'restaurant_data.g.dart';

RestaurantData RestaurantDataFromJson(String str) => RestaurantData.fromJson(json.decode(str));

String RestaurantDataToJson(RestaurantData data) => json.encode(data.toJson());

@freezed
class RestaurantData with _$RestaurantData {
  const factory RestaurantData({
    @JsonKey(name: 'restaurant_name') String? restaurantName,
     String? reviews,
     int? status,
    @JsonKey(name: 'time_tries') String? timeTries,
     UserData? user,
  }) = _RestaurantData;

  factory RestaurantData.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDataFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'user_name') String? userName,
     String? email,
     String? phone,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}