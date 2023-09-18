import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required Rating rating,
  }) = _Product;

  static List<Product> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Product.fromJson(json)).toList();
    // تحويل قائمة البيانات إلى قائمة منتجات باستخدام دالة map
  }

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  // static List<Product> fromJsonList(List<dynamic> list) => list.map((e) => Product.fromJson(e)).toList();

}

@freezed
class Rating with _$Rating {
  factory Rating({
    required double rate,
    required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) =>
      _$RatingFromJson(json);
  static List<Rating> fromJsonList(List<dynamic> list) => list.map((e) => Rating.fromJson(e)).toList();

}



