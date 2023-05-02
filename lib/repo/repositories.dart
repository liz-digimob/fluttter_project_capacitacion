import 'package:bloc_flutter_api/model/equipo.dart';
import '../ui/constantes.dart';

class Repositories implements Equipo {
  @override
  Future<List<Equipo>> getEquipos() {
    return Future.delayed(Duration(milliseconds: 500), () => equipos);
  }

  @override
  String? capitan;

  @override
  int? diferenciaDeGoles;

  @override
  String? fotoEquipo;

  @override
  int? fotoUniforme;

  @override
  int? golesAFavor;

  @override
  int? grupo;

  @override
  int? id;

  @override
  int? idGrupo;

  @override
  int? juegosEmpatados;

  @override
  int? juegosGanados;

  @override
  int? juegosJugados;

  @override
  int? juegosPerdidos;

  @override
  int? jugadoresPagados;

  @override
  int? jugadoresRegistrados;

  @override
  String? nombreEquipo;

  @override
  int? numero;

  @override
  int? ptsExtrasOAmosnetacion;

  @override
  int? puntos;
}
