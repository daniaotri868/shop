//
// import 'package:flyfood_restaurant/core/api/result.dart';
// import 'package:flyfood_restaurant/features/auth/data/model/user.dart';
// import 'package:flyfood_restaurant/features/profile/data/data_source/profile_remote_data_source.dart';
// import 'package:flyfood_restaurant/features/profile/data/model/restaurant_data.dart';
// import 'package:flyfood_restaurant/features/profile/domain/repository/profile_repository.dart';
// import 'package:injectable/injectable.dart';
// import '../../../../common/models/response_wrapper/response_wrapper.dart';
// import '../../../../core/api/api_utils.dart';
//
//
// @Injectable(as: ProfileRepository)
// class ProfileRepositoryImpl extends ProfileRepository {
//   final ProfileRemoteDataSource datasource;
//
//   ProfileRepositoryImpl({required this.datasource});
//
//
//   @override
//   Future<Result<ResponseWrapper<RestaurantData>>> getUserData() {
//     return toApiResult(() async =>datasource.getUserData());
//   }
//
//   @override
//   Future<Result<ResponseWrapper<bool>>> changeStatus(Map<String, dynamic> params) {
//     return toApiResult(() async => datasource.changStatus(params));
//   }
//
//   @override
//   Future<Result<ResponseWrapper<User>>> changePassword(Map<String, dynamic> params) {
//    return toApiResult(() async => datasource.changePassward(params));
//   }
//
//
//
//
//
//
//
// }
