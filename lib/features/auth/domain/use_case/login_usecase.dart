import 'package:injectable/injectable.dart';
import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/result.dart';
import '../../../../core/use_case/use_case.dart';
import '../repository/auth_repository.dart';

@injectable
class LoginUsecase extends UseCase<Result<ResponseWrapper<dynamic>>, LoginParams> {
  LoginUsecase(this.repository);

  final AuthRepository repository;

  @override
  Future<Result<ResponseWrapper<dynamic>>> call(LoginParams params) {
    return repository.login(params.toMap());
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': email,
      'password': password,
    };
  }
}
