// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respuesta_equipo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RespuestaEquipo _$RespuestaEquipoFromJson(Map<String, dynamic> json) =>
    RespuestaEquipo(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Equipo.fromJson(e as Map<String, dynamic>))
          .toList(),
      mensaje: json['mensaje'] as String,
      respuesta: json['respuesta'] as String,
    );

Map<String, dynamic> _$RespuestaEquipoToJson(RespuestaEquipo instance) =>
    <String, dynamic>{
      'respuesta': instance.respuesta,
      'mensaje': instance.mensaje,
      'data': instance.data,
    };
