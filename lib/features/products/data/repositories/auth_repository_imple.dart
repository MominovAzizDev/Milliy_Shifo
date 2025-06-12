import 'package:milliy_shifo/features/products/data/data_sourses/local/auth_local_datasourse.dart';
import 'package:milliy_shifo/features/products/domain/repositories/auth_repository.dart';

class Authrepositoryimple implements AuthRepository {
  final Authlocaldatasourse localDataSourse;
  Authrepositoryimple(this.localDataSourse);

  @override
  Future<void> login(String email, String password) {
    return localDataSourse.saveUser(email, password);
  }

  @override
  Future<bool> register(String email, String password) {
    return localDataSourse.login(email, password);
  }
}
