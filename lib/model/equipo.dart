import 'package:json_annotation/json_annotation.dart';
part 'equipo.g.dart';

@JsonSerializable()
class Equipo {
  int? id;
  String? nombreEquipo;
  int? idGrupo;
  String? fotoEquipo;
  String? fotoUniforme;
  int? jugadoresPagados;
  int? jugadoresRegistrados;
  int? juegosJugados;
  int? juegosGanados;
  int? juegosEmpatados;
  int? juegosPerdidos;
  int? golesAFavor;
  int? golesEnContra;
  int? diferenciaDeGoles;
  int? puntos;
  int? numero;

  Equipo({
    this.id,
    this.nombreEquipo,
    this.idGrupo,
    this.fotoEquipo,
    this.fotoUniforme,
    this.jugadoresPagados,
    this.jugadoresRegistrados,
    this.juegosJugados,
    this.juegosGanados,
    this.juegosEmpatados,
    this.juegosPerdidos,
    this.golesAFavor,
    this.golesEnContra,
    this.diferenciaDeGoles,
    this.puntos,
    this.numero,
  });

  factory Equipo.fromJson(Map<String, dynamic> json) => _$EquipoFromJson(json);
  Map<String, dynamic> toJson() => _$EquipoToJson(this);
}
