import 'package:flutter/material.dart';
import 'model/equipo.dart';

class DetalleEquipoPage extends StatelessWidget {
  static const routeName = '/detalles-equipo';

  const DetalleEquipoPage({Key? key, required this.equipo}) : super(key: key);

  final Equipo equipo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del equipo: ${equipo.nombreEquipo}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Jugadores pagados: ${equipo.jugadoresPagados}'),
            Text('Juegos jugados: ${equipo.juegosJugados}'),
            Text('Juegos ganados: ${equipo.juegosGanados}'),
            Text('Juegos empatados: ${equipo.juegosEmpatados}'),
            Text('Juegos perdidos: ${equipo.juegosPerdidos}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
