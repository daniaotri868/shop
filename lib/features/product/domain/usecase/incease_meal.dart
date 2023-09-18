// import 'package:flyfood_restaurant/core/api/client_config.dart';
// import 'package:flyfood_restaurant/core/api/result.dart';
// import 'package:flyfood_restaurant/core/use_case/use_case.dart';
// import 'package:flyfood_restaurant/features/product/data/model/meal_model/meal_model.dart';
// import 'package:flyfood_restaurant/features/product/data/model/product_model.dart';
// import 'package:flyfood_restaurant/features/product/domain/repo/repo_product.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../../../common/models/response_wrapper/response_wrapper.dart';
// import 'decease_meal.dart';
//
// @injectable
// class IncreaseMealUsecase extends UseCase<Result<ResponseWrapper<MealModel>>, DecreaseOrIncreaseParams> {
//   final ProductRepository repository;
//
//   IncreaseMealUsecase(this.repository);
//
//   @override
//   Future<Result<ResponseWrapper<MealModel>>> call(DecreaseOrIncreaseParams params) =>
//       repository.increaseMeal(params.toMap());
// }
