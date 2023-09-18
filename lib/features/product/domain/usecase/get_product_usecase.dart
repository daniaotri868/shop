
import 'package:injectable/injectable.dart';

import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/result.dart';
import '../../../../core/use_case/use_case.dart';
import '../../data/model/product_model.dart';
import '../repo/repo_product.dart';

@injectable
class GetProductUsecase extends UseCase<Result<ResponseWrapper<List<Product>>>, NoParams> {
  final ProductRepository repository;

  GetProductUsecase(this.repository);

  @override
  Future<Result<ResponseWrapper<List<Product>>>> call(NoParams params) => repository.getProductModel();
}
