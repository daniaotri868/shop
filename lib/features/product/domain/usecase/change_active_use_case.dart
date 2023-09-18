// mport 'package:flyfood_restaurant/core/api/client_config.dart';
// import 'package:flyfood_restaurant/core/api/result.dart';
// import 'package:flyfood_restaurant/core/use_case/use_case.dart';
// import 'package:flyfood_restaurant/features/product/data/model/product_model.dart';
// import 'package:flyfood_restaurant/features/product/domain/repo/repo_product.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../../../common/models/response_wrapper/response_wrapper.dart';
//
// @injectable
// class ChangeActiveUsecase extends UseCase<Result<ResponseWrapper<ProductModel>>, int> {
//   final ProductRepository repository;
//
//   ChangeActiveUsecase(this.repository);
//
//   @override
//   Future<Result<ResponseWrapper<ProductModel>>> call(int mode) => repository.changeActiveMode(mode);
// }
