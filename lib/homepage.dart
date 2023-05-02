import 'package:bloc_flutter_api/repo/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/app_blocs.dart';
import 'blocs/app_events.dart';
import 'blocs/app_states.dart';
import 'model/equipo.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_flutter_api/route/routes.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (BuildContext context) => UserBloc(Repositories()),
        ),
      ],
      child: Scaffold(
          appBar: AppBar(title: const Text('Equipos')), body: blocBody()),
    );
  }

  Widget blocBody() {
    return BlocProvider(
      create: (context) => UserBloc(
        Repositories(),
      )..add(LoadUserEvent()),
      child: BlocBuilder<UserBloc, EquipoState>(
        builder: (context, state) {
          if (state is EquipoLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is EquipoErrorState) {
            return const Center(child: Text("Error"));
          }
          if (state is EquipoLoadedState) {
            List<Equipo> userList = state.equipos;
            return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: Card(
                          color: Theme.of(context).primaryColor,
                          child: ListTile(
                              title: Text(
                                '${userList[index].nombreEquipo}  ${userList[index].grupo}',
                                style: const TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                '${userList[index].juegosGanados}',
                                style: const TextStyle(color: Colors.white),
                              ),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    userList[index].fotoEquipo.toString()),
                              ),
                              onTap: () {
                                AutoRouter.of(context).push(
                                  DetalleEquipoRoute(equipo: userList[index]),
                                );
                              })));
                });
          }

          return Container();
        },
      ),
    );
  }
}
