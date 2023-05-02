import 'package:auto_route/auto_route.dart';
import 'package:bloc_flutter_api/detalle_equipo_page.dart';
import 'package:bloc_flutter_api/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: DetalleEquipoPage, path: '/DetalleEquipo'),
  ],
)
class $AppRouter {}
