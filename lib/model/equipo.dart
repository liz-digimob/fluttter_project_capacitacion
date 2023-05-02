class Equipo {
  int? id;
  String? nombreEquipo;
  int? idGrupo;
  String? fotoEquipo;
  int? fotoUniforme;
  int? jugadoresPagados;
  int? jugadoresRegistrados;
  int? juegosJugados;
  int? juegosGanados;
  int? juegosEmpatados;
  int? juegosPerdidos;
  int? golesAFavor;
  int? diferenciaDeGoles;
  int? puntos;
  int? numero;
  String? capitan;
  int? grupo;
  int? ptsExtrasOAmosnetacion;

  Equipo(
      {this.id,
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
      this.diferenciaDeGoles,
      this.puntos,
      this.numero,
      this.capitan,
      this.grupo,
      this.ptsExtrasOAmosnetacion});

  Equipo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombreEquipo = json['nombreEquipo'];
    idGrupo = json['idGrupo'];
    fotoEquipo = json['fotoEquipo'];
    fotoUniforme = json['fotoUniforme'];
    jugadoresPagados = json['jugadoresPagados'];
    jugadoresRegistrados = json['jugadoresRegistrados'];
    juegosJugados = json['juegosJugados'];
    juegosGanados = json['juegosGanados'];
    juegosEmpatados = json['juegosEmpatados'];
    juegosPerdidos = json['juegosPerdidos'];
    golesAFavor = json['golesAFavor'];
    diferenciaDeGoles = json['diferenciaDeGoles'];
    puntos = json['puntos'];
    numero = json['numero'];
    capitan = json['capitan'];
    grupo = json['grupo'];
    ptsExtrasOAmosnetacion = json['ptsExtrasOAmosnetacion'];
  }
}
