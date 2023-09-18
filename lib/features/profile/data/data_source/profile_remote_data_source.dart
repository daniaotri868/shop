//
// import 'package:flyfood_restaurant/core/api/client_config.dart';
// import 'package:flyfood_restaurant/features/auth/data/model/user.dart';
// import 'package:flyfood_restaurant/features/profile/data/model/restaurant_data.dart';
// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../../../common/constants/route.dart';
// import '../../../../common/models/response_wrapper/response_wrapper.dart';
// import '../../../../core/api/api_utils.dart';
// import '../../../../core/api/client.dart';
// import '../../../app/domin/repositories/prefs_repository.dart';
//
//
// @injectable
// class ProfileRemoteDataSource {
//   final ClientApi clientApi;
//
//   ProfileRemoteDataSource(this.clientApi);
//
//   Future<ResponseWrapper<RestaurantData>> getUserData() async {
//     return throwAppException(() async {
//       final response = await clientApi.request(RequestConfig(
//         endpoint: EndPoints.profile.getUserData,
//
//         clientMethod: ClientMethod.get,
//       ));
//       return ResponseWrapper<RestaurantData>.fromJson(
//         response.data,
//             (json) => RestaurantData.fromJson(json) ,
//       );
//     });
//   }
//
//   Future<ResponseWrapper<bool>> changStatus(Map<String, dynamic> params) async {
//     return throwAppException(() async {
//       final response = await clientApi.request(RequestConfig(
//         endpoint: EndPoints.profile.changeStatus,
//         data: params,
//         clientMethod: ClientMethod.post,
//       ));
//       return ResponseWrapper<bool>.fromJson(
//         response.data ,
//             (json) {
//           print("jfdslkjflsdfj${response.data}");
//           return  response.data['success']  ;
//         },
//       );
//     });
//   }
//
//   Future<ResponseWrapper<User>> changePassward(Map<String, dynamic> params) async {
//     return throwAppException(() async {
//       final response = await clientApi.request(RequestConfig(
//         endpoint: EndPoints.profile.changePassward,
//         data: params,
//         clientMethod: ClientMethod.post,
//       ));
//       return ResponseWrapper.fromJson(
//         response.data,
//             (json) {
//           final user = User.fromJson(json);
//           final PrefsRepository prefsRepository = GetIt.I<PrefsRepository>();
//           prefsRepository.setUser(user);
//           return user;
//         },
//       );
//     });
//   }
//
//
// }
