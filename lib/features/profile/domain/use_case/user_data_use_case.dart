//
// import 'package:flyfood_restaurant/core/api/result.dart';
// import 'package:flyfood_restaurant/core/use_case/use_case.dart';
// import 'package:flyfood_restaurant/core/utils/extensions/object.dart';
// import 'package:flyfood_restaurant/features/profile/data/model/restaurant_data.dart';
// import 'package:flyfood_restaurant/features/profile/domain/repository/profile_repository.dart';
// import 'package:injectable/injectable.dart';
// import '../../../../common/models/response_wrapper/response_wrapper.dart';
//
//
// @injectable
// class GetUserDataUseCase extends UseCaseNoParam<Result<ResponseWrapper<Restaur
// antData>>> {
//   GetUserDataUseCase(this.repository);
//
//   final ProfileRepository repository;
//
//   @override
//   Future<Result<ResponseWrapper<RestaurantData>>> call() {
//     return repository.getUserData();
//   }
// }