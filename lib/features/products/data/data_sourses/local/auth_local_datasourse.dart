import 'package:hive/hive.dart';

abstract class Authlocaldatasourse {
  Future<void> saveUser(String email, String password);
  Future<bool> login(String email, String password);
}

class AuthlocaldatasourseImpl implements Authlocaldatasourse {
  @override
  Future<void> saveUser(String email, String password) async {
    final box = await Hive.openBox("users");
    await box.put("email", email);
    await box.put("password", password);
  }

  @override
  Future<bool> login(String email, String password) async {
    final box = await Hive.openBox("users");
    final savedUsername = box.get("email");
    final savedPassword = box.get("password");
    return email == savedUsername && savedPassword == password;
  }
}
