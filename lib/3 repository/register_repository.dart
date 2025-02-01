import 'package:cargo_sync_driver/1%20model/auth_model.dart';
import 'package:cargo_sync_driver/2%20service/register_service.dart';

class RegisterRepository {
  RegisterServices registerServices = RegisterServices();

  Future registerUser(RegisterModel register) async {
    final response = await registerServices.registerUser(register);
    return response;
  }

  Future loginUser(RegisterModel loginUser) async {
    final response = await registerServices.loginUser(loginUser);
    return response;
  }

  Future verifytoken(RegisterModel verifytoken) async {
    final response = await registerServices.verifytoken(verifytoken);
    return response;
  }
}
