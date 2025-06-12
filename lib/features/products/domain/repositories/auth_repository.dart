abstract class AuthRepository {
  Future<bool> register(String email, String password);
  Future<void> login(String email, String password);
}
