// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equipo _$EquipoFromJson(Map<String, dynamic> json) => Equipo(
      id: json['id'] as int?,
      nombreEquipo: json['nombreEquipo'] as String?,
      idGrupo: json['idGrupo'] as int?,
      fotoEquipo: json['fotoEquipo'] as String?,
      fotoUniforme: json['fotoUniforme'] as String?,
      jugadoresPagados: json['jugadoresPagados'] as int?,
      jugadoresRegistrados: json['jugadoresRegistrados'] as int?,
      juegosJugados: json['juegosJugados'] as int?,
      juegosGanados: json['juegosGanados'] as int?,
      juegosEmpatados: json['juegosEmpatados'] as int?,
      juegosPerdidos: json['juegosPerdidos'] as int?,
      golesAFavor: json['golesAFavor'] as int?,
      golesEnContra: json['golesEnContra'] as int?,
      diferenciaDeGoles: json['diferenciaDeGoles'] as int?,
      puntos: json['puntos'] as int?,
      numero: json['numero'] as int?,
    );

Map<String, dynamic> _$EquipoToJson(Equipo instance) => <String, dynamic>{
      'id': instance.id,
      'nombreEquipo': instance.nombreEquipo,
      'idGrupo': instance.idGrupo,
      'fotoEquipo': instance.fotoEquipo,
      'fotoUniforme': instance.fotoUniforme,
      'jugadoresPagados': instance.jugadoresPagados,
      'jugadoresRegistrados': instance.jugadoresRegistrados,
      'juegosJugados': instance.juegosJugados,
      'juegosGanados': instance.juegosGanados,
      'juegosEmpatados': instance.juegosEmpatados,
      'juegosPerdidos': instance.juegosPerdidos,
      'golesAFavor': instance.golesAFavor,
      'golesEnContra': instance.golesEnContra,
      'diferenciaDeGoles': instance.diferenciaDeGoles,
      'puntos': instance.puntos,
      'numero': instance.numero,
    };
