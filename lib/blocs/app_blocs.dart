import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/repositories.dart';
import 'app_events.dart';
import 'app_states.dart';

class UserBloc extends Bloc<UserEvent, EquipoState> {
  final Repositories _userRepository;

  UserBloc(this._userRepository) : super(EquipoLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(EquipoLoadingState());
      try {
        final users = await _userRepository.getEquipos();
        emit(EquipoLoadedState(users));
      } catch (e) {
        emit(EquipoErrorState(e.toString()));
      }
    });
  }
}
