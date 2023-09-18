
import 'package:injectable/injectable.dart';
import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/api_utils.dart';
import '../../../../core/api/result.dart';
import '../../domain/repo/repo_product.dart';
import '../data_source/remote_data_source.dart';
import '../model/product_model.dart';
@Injectable(as: ProductRepository)
class ProductRepositoryImp extends ProductRepository{

  final ProductRemoteDataSource datasource;

  ProductRepositoryImp({required this.datasource});

  @override
  Future<Result<ResponseWrapper<List<Product>>>> getProductModel() {
    return toApiResult(() async {
      final result = datasource.getProductModel();
      return result;
    });
  }

  // @override
  // Future<Result<ResponseWrapper<Product>>> changeActiveMode(int activeMode) {
  //   return toApiResult(() async {
  //     final result = datasource.changeActive(activeMode);
  //     return result;
  //   });
  // }
  //
  // @override
  // Future<Result<ResponseWrapper<ProductModel>>> discount(double value) {
  //   return toApiResult(() async {
  //     final result = datasource.discount(value);
  //     return result;
  //   });
  // }
  //
  // @override
  // Future<Result<ResponseWrapper<MealModel>>> decreaseMeal(Map<String,dynamic> params) {
  //   return toApiResult(() async {
  //     final result = datasource.decreaseMeal(params);
  //     return result;
  //   });
  // }
  //
  // @override
  // Future<Result<ResponseWrapper<MealModel>>> increaseMeal(Map<String,dynamic> params) {
  //   return toApiResult(() async {
  //     final result = datasource.increaseMeal(params);
  //     return result;
  //   });
  // }


}