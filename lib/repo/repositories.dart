import '../api/api.dart';
import '../model/respuesta_equipo.dart';

class Repositories {
  final api = Api();
  Future<RespuestaEquipo> obtenerEquipos() async {
    return api.obtenerEquipos();
  }
}
