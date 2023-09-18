// import 'package:flyfood_restaurant/core/api/result.dart';
// import 'package:flyfood_restaurant/core/use_case/use_case.dart';
// import 'package:flyfood_restaurant/features/profile/domain/repository/profile_repository.dart';
// import 'package:injectable/injectable.dart';
// import '../../../../common/models/response_wrapper/response_wrapper.dart';
// import '../../../auth/data/model/user.dart';
//
// @injectable
// class ChangePasswordUsecase extends UseCase<Result<ResponseWrapper<User>>, ChangePasswordParams> {
//   ChangePasswordUsecase(this.repository);
//
//   final ProfileRepository repository;
//
//   @override
//   Future<Result<ResponseWrapper<User>>> call(ChangePasswordParams params) {
//     return repository.changePassword(params.toMap);
//   }
// }
//
// class ChangePasswordParams {
//   final String currentPassword;
//   final String newPassword;
//   final String newConfirmPassword;
//
//   ChangePasswordParams({
//     required this.currentPassword,
//     required this.newPassword,
//     required this.newConfirmPassword,
//   });
//
//   Map<String, dynamic> get toMap => {
//     'current_password': currentPassword,
//     'new_password': newPassword,
//     'new_confirm_password': newConfirmPassword,
//   };
// }
