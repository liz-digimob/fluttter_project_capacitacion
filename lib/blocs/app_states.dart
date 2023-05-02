import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../model/equipo.dart';

@immutable
abstract class EquipoState extends Equatable {}

class EquipoLoadingState extends EquipoState {
  @override
  List<Object?> get props => [];
}

class EquipoLoadedState extends EquipoState {
  final List<Equipo> equipos;
  EquipoLoadedState(this.equipos);
  @override
  List<Object?> get props => [equipos];
}

class EquipoErrorState extends EquipoState {
  final String error;
  EquipoErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
