// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantData _$$_RestaurantDataFromJson(Map<String, dynamic> json) =>
    _$_RestaurantData(
      restaurantName: json['restaurant_name'] as String?,
      reviews: json['reviews'] as String?,
      status: json['status'] as int?,
      timeTries: json['time_tries'] as String?,
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RestaurantDataToJson(_$_RestaurantData instance) =>
    <String, dynamic>{
      'restaurant_name': instance.restaurantName,
      'reviews': instance.reviews,
      'status': instance.status,
      'time_tries': instance.timeTries,
      'user': instance.user,
    };

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      userName: json['user_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
    };
