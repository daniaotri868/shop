part of 'product_bloc.dart';

@immutable
class ProductState {
  final PageState<List<Product>> productState;

  const ProductState({
    this.productState = const PageState.init(),
  });

  ProductState copyWith({
    final PageState<List<Product>>? productState,
  }) {
    return ProductState(
      productState: productState ?? this.productState,
    );
  }
}
