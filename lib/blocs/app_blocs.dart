import 'package:flutter_bloc/flutter_bloc.dart';
import '../api/api.dart';
import '../repo/repositories.dart';
import 'app_events.dart';
import 'app_states.dart';

class UserBloc extends Bloc<UserEvent, EquipoState> {
  final Repositories _userRepository;

  UserBloc(this._userRepository) : super(EquipoLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(EquipoLoading());
      try {
        final users = await _userRepository.obtenerEquipos();

        if (users.respuesta == "OK") {
          emit(EquipoLoadedState(users.data!));
        } else {
          emit(EquipoErrorState(users.mensaje));
        }
      } on ServerError catch (o, _) {
        emit(EquipoErrorState(o.code.toString() + "  " + o.body));
      }
    });
  }
}
