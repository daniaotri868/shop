import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:new_shop/core/use_case/use_case.dart';
import '../../../../common/models/page_state/page_state.dart';
import '../../data/model/product_model.dart';
import '../../domain/usecase/get_product_usecase.dart';

part 'product_event.dart';

part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductUsecase getProductUsecase;
  // final ChangeActiveUsecase changeActiveUsecase;
  // final DiscountUsecase discountUsecase;
  // final DecreaseMealUsecase decreaseMealUsecase;
  // final IncreaseMealUsecase increaseMealUsecase;

  ProductBloc(
    this.getProductUsecase,
    // this.changeActiveUsecase,
    // this.discountUsecase,
    // this.decreaseMealUsecase,
    // this.increaseMealUsecase,
  ) : super(const ProductState()) {
    on<GetProductEvent>(_onGetProductEvent);
    // on<ChangeActiveMenuEvent>(_onChangeActiveMenuEvent);
    // on<DiscountEvent>(_onDiscountEvent);
    // on<DecreaseEvent>(_onDecreaseEvent);
    // on<IncreaseEvent>(_onIncreaseEvent);
  }

  FutureOr<void> _onGetProductEvent(GetProductEvent event, Emitter<ProductState> emit) async {
    emit(state.copyWith(productState: PageState.loading()));
    final result = await getProductUsecase(NoParams());
    print(".........................$result");
    result.fold(
      (exception, message) => emit(state.copyWith(productState: PageState.error(exception: exception))),
      (value) => emit(state.copyWith(productState: PageState.loaded(data: value.data))),
    );
  }

  // FutureOr<void> _onChangeActiveMenuEvent(ChangeActiveMenuEvent event, Emitter<ProductState> emit) async {
  //   // emit(state.copyWith(productState: PageState.loading()));
  //   final result = await changeActiveUsecase(event.activeMode);
  //   result.fold(
  //       (exception, message) => emit(state.copyWith(productState: PageState.loaded(data: state.productState.data))),
  //       (value) => emit(state.copyWith(productState: PageState.loaded(data: value.data))));
  // }
  //
  // FutureOr<void> _onDiscountEvent(DiscountEvent event, Emitter<ProductState> emit) async {
  //   final result = await discountUsecase(event.value);
  //   result.fold(
  //       (exception, message) => emit(state.copyWith(productState: PageState.loaded(data: state.productState.data))),
  //       (value) => emit(state.copyWith(productState: PageState.loaded(data: value.data))));
  // }
  //
  // FutureOr<void> _onDecreaseEvent(DecreaseEvent event, Emitter<ProductState> emit) async {
  //   final result = await decreaseMealUsecase(event.decreaseOrIncreaseParams);
  //   result.fold(
  //       (exception, message) => emit(state.copyWith(productState: PageState.loaded(data: state.productState.data))),
  //       (value) => emit(state.copyWith(
  //           productState: PageState.loaded(
  //               data: state.productState.data.copyWith(
  //                   meals: (state.productState.data.meals ?? [])
  //                       .map((e) => e.id == event.decreaseOrIncreaseParams.idMeal ? value.data : e)
  //                       .toList())))));
  // }
  //
  // FutureOr<void> _onIncreaseEvent(IncreaseEvent event, Emitter<ProductState> emit) async {
  //   final result = await increaseMealUsecase(event.decreaseOrIncreaseParams);
  //   result.fold(
  //       (exception, message) => emit(state.copyWith(productState: PageState.loaded(data: state.productState.data))),
  //       (value) => emit(state.copyWith(
  //           productState: PageState.loaded(
  //               data: state.productState.data.copyWith(
  //                   meals: (state.productState.data.meals ?? [])
  //                       .map((e) => e.id == event.decreaseOrIncreaseParams.idMeal ? value.data : e)
  //                       .toList())))));
  // }
}
