// part of 'profile_bloc.dart';
//
// @immutable
// abstract class ProfileEvent extends Equatable{
//   const ProfileEvent();
// }
//
// class GetUserDataEvent extends ProfileEvent{
//   const GetUserDataEvent();
//
//   @override
//   List<Object?> get props => [];
// }
//
// class ChangeStatusEvent extends ProfileEvent{
//   final String status;
//   const ChangeStatusEvent(this.status);
//
//   @override
//   List<Object?> get props => [
//     status
//   ];
// }
//
// class ChangePasswordEvent extends ProfileEvent {
//   final String currentPassword;
//   final String newPassword;
//   final String newConfirmPassword;
//   final VoidCallback? onSuccess;
//
//   const ChangePasswordEvent({
//     required this.currentPassword,
//     required this.newPassword,
//     required this.newConfirmPassword,
//     required this.onSuccess,
//   });
//
//   @override
//   List<Object?> get props => [currentPassword, newPassword, newConfirmPassword];
// }