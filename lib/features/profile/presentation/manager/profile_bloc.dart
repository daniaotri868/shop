// import 'dart:async';
// import 'dart:ui';
//
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flyfood_restaurant/common/models/page_state/bloc_status.dart';
// import 'package:flyfood_restaurant/common/models/page_state/page_state.dart';
// import 'package:flyfood_restaurant/features/profile/data/model/restaurant_data.dart';
// import 'package:flyfood_restaurant/features/profile/domain/use_case/change_passward_use_case.dart';
// import 'package:flyfood_restaurant/features/profile/domain/use_case/user_data_use_case.dart';
// import 'package:flyfood_restaurant/features/profile/domain/use_case/change_status_usecase.dart';
//
// import 'package:injectable/injectable.dart';
// import 'package:meta/meta.dart';
//
// part 'profile_event.dart';
// part 'profile_state.dart';
// @injectable
// class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
//   final GetUserDataUseCase getUserDataUseCase;
//   final ChangeStatusUseCase changeStatusUseCase;
//   final ChangePasswordUsecase changePasswordUseCase;
//   ProfileBloc(this.getUserDataUseCase, this.changeStatusUseCase, this.changePasswordUseCase) : super( ProfileState()) {
//     on<GetUserDataEvent>(_onGetUserData);
//     on<ChangeStatusEvent>(_onChangeStatus);
//     on<ChangePasswordEvent>(_onChangePassword);
//   }
//
//   FutureOr<void> _onGetUserData(GetUserDataEvent event, Emitter<ProfileState> emit) async{
//     emit(state.copyWith(getUserDataStatus: const PageState.loading()));
//
//     final result = await getUserDataUseCase();
//
//     result.fold(
//           (exception, message) => emit(state.copyWith(getUserDataStatus: PageState.error(exception: exception))),
//           (value) => emit(state.copyWith(
//             getUserDataStatus:  PageState.loaded(data: value.data),
//       )),
//     );
//   }
//
//   FutureOr<void> _onChangeStatus(ChangeStatusEvent event, Emitter<ProfileState> emit) async{
//     emit(state.copyWith(ChangeStatusState: const BlocStatus.loading()));
//
//     final result = await changeStatusUseCase(StatusParam(status: event.status));
//     print(result);
//     result.fold(
//           (exception, message) => emit(state.copyWith(ChangeStatusState: BlocStatus.fail(error: message))),
//           (value) => emit(state.copyWith(
//         ChangeStatusState: const BlocStatus.success(),
//       )),
//     );
//   }
//
//   FutureOr<void> _onChangePassword(ChangePasswordEvent event, Emitter<ProfileState> emit) async {
//     emit(state.copyWith(changePasswordStatus: const BlocStatus.loading()));
//
//     final result = await changePasswordUseCase(
//       ChangePasswordParams(
//         currentPassword: event.currentPassword,
//         newConfirmPassword: event.newConfirmPassword,
//         newPassword: event.newPassword,
//       ),
//     );
//
//     result.fold(
//           (exception, message) => emit(state.copyWith(
//         changePasswordStatus: BlocStatus.fail(error: message),
//       )),
//           (value) {
//         emit(state.copyWith(changePasswordStatus: const BlocStatus.success()));
//         event.onSuccess?.call();
//       },
//     );
//   }
// }
