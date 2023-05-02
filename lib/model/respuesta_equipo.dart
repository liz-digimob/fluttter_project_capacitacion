import 'package:bloc_flutter_api/model/equipo.dart';
import 'package:json_annotation/json_annotation.dart';
part 'respuesta_equipo.g.dart';

@JsonSerializable()
class RespuestaEquipo {
  String respuesta;
  String mensaje;
  List<Equipo>? data;

  RespuestaEquipo({this.data, required this.mensaje, required this.respuesta});

  factory RespuestaEquipo.fromJson(Map<String, dynamic> json) =>
      _$RespuestaEquipoFromJson(json);
  Map<String, dynamic> toJson() => _$RespuestaEquipoToJson(this);
}
