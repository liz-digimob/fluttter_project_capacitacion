import 'package:bloc_flutter_api/model/equipo.dart';

List<Equipo> equipos = [
  Equipo(
    id: 15,
    nombreEquipo: 'Scratch Du Gordos',
    idGrupo: 1,
    fotoEquipo: 'Logo18_Scratch_Du_Gordos.png',
    fotoUniforme: null,
    jugadoresPagados: 24,
    jugadoresRegistrados: 21,
    juegosJugados: 7,
    juegosGanados: 6,
    juegosEmpatados: 0,
    juegosPerdidos: 1,
    golesAFavor: 37,
    diferenciaDeGoles: 30,
    puntos: 18,
    numero: 1,
  ),
  Equipo(
    id: 22,
    nombreEquipo: 'Lobos FC',
    idGrupo: 1,
    fotoEquipo: 'lobos_fc.png',
    fotoUniforme: null,
    jugadoresPagados: 18,
    jugadoresRegistrados: 17,
    juegosJugados: 7,
    juegosGanados: 6,
    juegosEmpatados: 0,
    juegosPerdidos: 1,
    golesAFavor: 37,
    diferenciaDeGoles: 18,
    puntos: 18,
    numero: 2,
  ),
  Equipo(
    id: 25,
    nombreEquipo: 'Brangus FC',
    idGrupo: 1,
    fotoEquipo: 'Logo_05_Brangus.png',
    fotoUniforme: null,
    jugadoresPagados: 24,
    jugadoresRegistrados: 24,
    juegosJugados: 7,
    juegosGanados: 5,
    juegosEmpatados: 1,
    juegosPerdidos: 1,
    golesAFavor: 23,
    diferenciaDeGoles: 12,
    puntos: 10,
    numero: 3,
  ),
  Equipo(
    id: 4,
    nombreEquipo: 'Real Porcinos FC',
    idGrupo: 1,
    fotoEquipo: 'real_porcinos.png',
    fotoUniforme: null,
    jugadoresPagados: 17,
    jugadoresRegistrados: 17,
    juegosJugados: 7,
    juegosGanados: 3,
    juegosEmpatados: 1,
    juegosPerdidos: 20,
    golesAFavor: 17,
    diferenciaDeGoles: 10,
    puntos: 4,
    numero: 3,
  ),
  Equipo(
    id: 12,
    nombreEquipo: 'Only Fats',
    idGrupo: 1,
    fotoEquipo: 'Only_Fats.png',
    fotoUniforme: null,
    jugadoresPagados: 13,
    jugadoresRegistrados: 13,
    juegosJugados: 7,
    juegosGanados: 0,
    juegosEmpatados: 0,
    juegosPerdidos: 7,
    golesAFavor: 6,
    diferenciaDeGoles: -43,
    puntos: 0,
    numero: 8,
  ),
];

const String API_LIGA2XL = "http://api-2xl.digimob.mx/";
const String RESOURCE_IMAGES_LOGO = "http://api-2xl.digimob.mx/images/equipo/";
