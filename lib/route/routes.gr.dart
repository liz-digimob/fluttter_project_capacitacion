// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:bloc_flutter_api/detalle_equipo_page.dart' as _i2;
import 'package:bloc_flutter_api/homepage.dart' as _i1;
import 'package:bloc_flutter_api/model/equipo.dart' as _i5;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    DetalleEquipoRoute.name: (routeData) {
      final args = routeData.argsAs<DetalleEquipoRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.DetalleEquipoPage(
          key: args.key,
          equipo: args.equipo,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          DetalleEquipoRoute.name,
          path: '/DetalleEquipo',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.DetalleEquipoPage]
class DetalleEquipoRoute extends _i3.PageRouteInfo<DetalleEquipoRouteArgs> {
  DetalleEquipoRoute({
    _i4.Key? key,
    required _i5.Equipo equipo,
  }) : super(
          DetalleEquipoRoute.name,
          path: '/DetalleEquipo',
          args: DetalleEquipoRouteArgs(
            key: key,
            equipo: equipo,
          ),
        );

  static const String name = 'DetalleEquipoRoute';
}

class DetalleEquipoRouteArgs {
  const DetalleEquipoRouteArgs({
    this.key,
    required this.equipo,
  });

  final _i4.Key? key;

  final _i5.Equipo equipo;

  @override
  String toString() {
    return 'DetalleEquipoRouteArgs{key: $key, equipo: $equipo}';
  }
}
