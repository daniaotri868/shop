import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/result.dart';
import '../../data/model/product_model.dart';

abstract class ProductRepository {
  Future<Result<ResponseWrapper<List<Product>>>> getProductModel();
  // Future<Result<ResponseWrapper<ProductModel>>> changeActiveMode(int activeMode);
  // Future<Result<ResponseWrapper<ProductModel>>> discount(double value);
  // Future<Result<ResponseWrapper<MealModel>>> increaseMeal(Map<String,dynamic> params);
  // Future<Result<ResponseWrapper<MealModel>>> decreaseMeal(Map<String,dynamic> params);
}
