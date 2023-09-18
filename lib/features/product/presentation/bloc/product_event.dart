part of 'product_bloc.dart';

@immutable
class ProductEvent {}

class GetProductEvent extends ProductEvent {}

// class ChangeActiveMenuEvent extends ProductEvent {
//   final int activeMode;
//
//   ChangeActiveMenuEvent(this.activeMode);
// }
//
// class DiscountEvent extends ProductEvent {
//   final double value;
//
//   DiscountEvent(this.value);
// }
//
// class IncreaseEvent extends ProductEvent {
//   final DecreaseOrIncreaseParams decreaseOrIncreaseParams;
//
//   IncreaseEvent({required this.decreaseOrIncreaseParams});
// }
//
// class DecreaseEvent extends ProductEvent {
//   final DecreaseOrIncreaseParams decreaseOrIncreaseParams;
//
//   DecreaseEvent({required this.decreaseOrIncreaseParams});
// }
