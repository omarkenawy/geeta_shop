import 'package:geeta_shop/data/base_request.dart';
import 'package:geeta_shop/data/models/user.dart';
import 'package:geeta_shop/utils/api_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepoApi {
  static Future<User?> signUp(User user, String password) async {
    final response = await BaseRequest.dynamicRequest(
        path: ApiConstans.signUpUrl,
        requestType: RequestType.POST,
        body: {"name": user.name, "email": user.email, "password": password});

    if (response == null || response['success'] == false) return null;
    if (response['user'] == null) return null;
    if (response['token'] == null) return null;

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', response['token']);

    return User.fromJson(response['user'] as Map<String, dynamic>);
  }

  static Future<User?> signIn(String email, String password) async {
    final response = await BaseRequest.dynamicRequest(
      path: ApiConstans.singInUrl,
      requestType: RequestType.POST,
      body: {"email": email, "password": password},
    );

    if (response == null || response['success'] == false) return null;
    if (response['user'] == null) return null;
    if (response['token'] == null) return null;

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', response['token']);

    return User.fromJson(response['user'] as Map<String, dynamic>);
  }
}
