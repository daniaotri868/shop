

import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/result.dart';

abstract class AuthRepository {
  Future<Result<ResponseWrapper<dynamic>>> login(Map<String, dynamic> params);
  Future<Result<ResponseWrapper<int>>> creatUser(Map<String, dynamic> params);
}
