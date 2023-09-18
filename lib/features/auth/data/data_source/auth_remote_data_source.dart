
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/constants/route.dart';
import '../../../../common/models/response_wrapper/response_wrapper.dart';
import '../../../../core/api/api_utils.dart';
import '../../../../core/api/client.dart';
import '../../../../core/api/client_config.dart';
import '../../../app/domin/repositories/prefs_repository.dart';
import '../model/token_model.dart';

@injectable
class AuthRemoteDataSource {
  final ClientApi clientApi;

  AuthRemoteDataSource(this.clientApi);

  Future<ResponseWrapper<dynamic>> login(Map<String, dynamic> params) async {
    return throwAppException(() async {
      final response = await clientApi.request(RequestConfig(
        endpoint: EndPoints.auth.login,
        data: params,
        clientMethod: ClientMethod.post,
      ));
      return ResponseWrapper.fromJson(
        response.data as Map<String, dynamic>,
        (json) {
          // final user = Token.fromJson(json);
          final PrefsRepository prefsRepository = GetIt.I<PrefsRepository>();
          print("----------------------${json}");
          prefsRepository
            // ..setUser(user)
            // .
          .setToken("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsInVzZXIiOiJqb2huZCIsImlhdCI6MTY5MzczNjIyOX0.mqL3-3DDkNhQ4JJsKPJTJjoQ9-8conyZUoDEXjzW1tY");
          return json;
        },
      );
    });
  }

  Future<ResponseWrapper<int>> createUser(Map<String, dynamic> params) async {
    return throwAppException(() async {
      final response = await clientApi.request(RequestConfig(
        endpoint: EndPoints.auth.createUser,
        data: params,
        clientMethod: ClientMethod.post,
      ));
      return ResponseWrapper.fromJson(
        response.data,
            (json) {
          return response.data['id'];
        },
      );
    });
  }


}
