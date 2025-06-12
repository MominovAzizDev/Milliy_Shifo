import 'package:milliy_shifo/features/products/domain/repositories/auth_repository.dart';

class Loginusecase {
  final AuthRepository repository;
  Loginusecase(this.repository);

  Future<bool> call(String email, String password) {
    return repository.register(email, password);
  }
}
