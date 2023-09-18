import 'package:injectable/injectable.dart';
import '../../../../common/constants/route.dart';
import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/api_utils.dart';
import '../../../../core/api/client.dart';
import '../../../../core/api/client_config.dart';
import '../model/product_model.dart';

@injectable
class ProductRemoteDataSource {
  final ClientApi clientApi;

  ProductRemoteDataSource(this.clientApi);

  Future<ResponseWrapper<List<Product>>> getProductModel() {
    return throwAppException(() async {
      final response = await clientApi.request(RequestConfig(
        endpoint: EndPoints.product.getProductData,
        clientMethod: ClientMethod.get,
      ));
      return ResponseWrapper.fromJson(
        response.data, // تحديد أن response.data هو قائمة
            (json) {
          print("----------------------------json $json");
          return Product.fromJsonList(json); // تحديد أن json هو خريطة
        },
      );
    });
  }


}
