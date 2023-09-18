// part of 'profile_bloc.dart';
//
//
// @immutable
//  class ProfileState extends Equatable {
//    final PageState<RestaurantData> getUserDataStatus;
//    final BlocStatus ChangeStatusState;
//    final BlocStatus changePasswordStatus;
//
//
//    ProfileState( {
//      this.getUserDataStatus = const PageState.init(),
//      this.ChangeStatusState= const BlocStatus.initial(),
//      this.changePasswordStatus=const BlocStatus.initial()
//    });
//
//    @override
//    List<Object?> get props =>
//        [
//          getUserDataStatus,
//          ChangeStatusState,
//          changePasswordStatus
//        ];
//
//    ProfileState copyWith({
//      PageState<RestaurantData>? getUserDataStatus,
//      BlocStatus? ChangeStatusState,
//      BlocStatus? changePasswordStatus,
//    }) {
//      return ProfileState(
//          getUserDataStatus: getUserDataStatus ?? this.getUserDataStatus,
//        ChangeStatusState: ChangeStatusState?? this.ChangeStatusState,
//        changePasswordStatus: changePasswordStatus ??this.changePasswordStatus
//      );
//    }
//
//
//  }