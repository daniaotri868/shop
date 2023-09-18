
import 'package:injectable/injectable.dart';
import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/api_utils.dart';
import '../../../../core/api/result.dart';
import '../../domain/repository/auth_repository.dart';
import '../data_source/auth_remote_data_source.dart';
import '../model/token_model.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource datasource;

  AuthRepositoryImpl({required this.datasource});

  @override
  Future<Result<ResponseWrapper<dynamic>>> login(Map<String, dynamic> params) {
    return toApiResult(() async {
      final result = datasource.login(params);
      return result;
    });
  }

  @override
  Future<Result<ResponseWrapper<int>>> creatUser(Map<String, dynamic> params) {
    return toApiResult(() async {
      final result = datasource.createUser(params);
      return result;
    });
  }







}
