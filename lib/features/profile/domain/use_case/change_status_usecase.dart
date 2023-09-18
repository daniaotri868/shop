// import 'package:flyfood_restaurant/common/models/response_wrapper/response_wrapper.dart';
// import 'package:flyfood_restaurant/core/api/result.dart';
// import 'package:flyfood_restaurant/core/use_case/use_case.dart';
// import 'package:flyfood_restaurant/features/profile/data/model/restaurant_data.dart';
// import 'package:flyfood_restaurant/features/profile/data/model/restaurant_data.dart';
// import 'package:flyfood_restaurant/features/profile/domain/repository/profile_repository.dart';
// import 'package:injectable/injectable.dart';
//
// @injectable
//  class ChangeStatusUseCase extends UseCase<Result<ResponseWrapper<bool>>,StatusParam > {
//   ChangeStatusUseCase(this.repository);
//
//   final ProfileRepository repository;
//
//   @override
//   Future<Result<ResponseWrapper<bool>>> call(StatusParam param) {
//     return repository.changeStatus( param.toMap);
//
//   }
// }
// class StatusParam {
//   final String status;
//
//   StatusParam({required this.status});
//
//   Map<String, dynamic> get toMap => {
//     'status': status,
//   };
//
//
//
// }