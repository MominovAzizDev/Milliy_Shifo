import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/register_usecases.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final RegisterUseCase registerUseCase;

  UserBloc({required this.registerUseCase}) : super(UserInitial()) {
    on<RegisterSubmitted>(_onRegisterSubmited);
  }
  Future<void> _onRegisterSubmited(
    RegisterSubmitted event,
    Emitter<UserState> emit,
  ) async {
    emit(UserLoading());

    final success = await registerUseCase(event.email, event.password);

    if (success) {
      emit(UserSuccess());
    } else {
      emit(UserFailure("Error in log in"));
    }
  }
}
