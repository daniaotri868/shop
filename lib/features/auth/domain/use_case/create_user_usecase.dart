

import 'package:injectable/injectable.dart';
import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/result.dart';
import '../../../../core/use_case/use_case.dart';
import '../repository/auth_repository.dart';

@injectable
class CreatUserUsecase extends UseCase<Result<ResponseWrapper<int>>, CreateUserParams> {
  CreatUserUsecase(this.repository);

  final AuthRepository repository;

  @override
  Future<Result<ResponseWrapper<int>>> call(CreateUserParams params) {
    return repository.creatUser(params.toMap());
  }
}

class CreateUserParams {
  final String email;
  final String username;
  final String password;

  CreateUserParams({required this.username,required this.password, required this.email});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'username': username,
      'password': password,
    };
  }
}
