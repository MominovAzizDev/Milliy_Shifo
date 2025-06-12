import 'package:get_it/get_it.dart';
import 'package:milliy_shifo/features/products/data/data_sourses/local/auth_local_datasourse.dart';
import 'package:milliy_shifo/features/products/data/repositories/auth_repository_imple.dart';
import 'package:milliy_shifo/features/products/domain/repositories/auth_repository.dart';
import 'package:milliy_shifo/features/products/domain/usecases/register_usecases.dart';
import 'package:milliy_shifo/features/products/presentation/bloc/user_bloc.dart';

final GetIt getIt = GetIt.instance;
void init() {
  getIt.registerFactory(() => UserBloc(registerUseCase: getIt()));

  getIt.registerLazySingleton(() => RegisterUseCase(getIt()));

  getIt.registerLazySingleton<AuthRepository>(
    () => Authrepositoryimple(getIt()),
  );

  getIt.registerLazySingleton<Authlocaldatasourse>(
    () => AuthlocaldatasourseImpl(),
  );
}
