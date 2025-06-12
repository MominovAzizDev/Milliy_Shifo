import 'package:milliy_shifo/features/products/domain/repositories/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository repository;
  RegisterUseCase(this.repository);

  Future<bool> call(String email, String password) async {
    return await repository.register(email, password);
  }
}
