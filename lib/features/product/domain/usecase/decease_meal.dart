// import 'package:flyfood_restaurant/core/api/client_config.dart';
// import 'package:flyfood_restaurant/core/api/result.dart';
// import 'package:flyfood_restaurant/core/use_case/use_case.dart';
// import 'package:flyfood_restaurant/features/product/data/model/meal_model/meal_model.dart';
// import 'package:flyfood_restaurant/features/product/data/model/product_model.dart';
// import 'package:flyfood_restaurant/features/product/domain/repo/repo_product.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../../../common/models/response_wrapper/response_wrapper.dart';
//
// @injectable
// class DecreaseMealUsecase extends UseCase<Result<ResponseWrapper<MealModel>>, DecreaseOrIncreaseParams> {
//   final ProductRepository repository;
//
//   DecreaseMealUsecase(this.repository);
//
//   @override
//   Future<Result<ResponseWrapper<MealModel>>> call(DecreaseOrIncreaseParams params) =>
//       repository.decreaseMeal(params.toMap());
// }
//
// class DecreaseOrIncreaseParams {
//   final int quantity_single;
//   final int quantity_collective;
//   final int idMeal;
//
//   DecreaseOrIncreaseParams({required this.quantity_single, required this.quantity_collective, required this.idMeal});
//
//
//   Map<String, dynamic> toMap() {
//     return {
//       'quantity_single': quantity_single,
//       'quantity_collective': quantity_collective,
//       'idMeal': idMeal,
//     };
//   }
//
// }
