import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../model/respuesta_equipo.dart';
import '../ui/constantes.dart';

class ServerError implements Exception {
  final String body;
  final int code;
  ServerError(this.body, this.code);
}

class Api {
  final Map<String, String> header =
      HashMap.from({"Content-Type": "application/json"});

  http.Response validateResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      return response;
    } else {
      if (response.statusCode == HttpStatus.unauthorized ||
          response.statusCode == HttpStatus.forbidden) {
        throw ServerError("Sesion invalida o expirada", response.statusCode);
      } else {
        throw ServerError(response.body, response.statusCode);
      }
    }
  }

  Future<http.Response> _get(String url) async {
    Uri urlRequest = Uri.parse(API_LIGA2XL + url);
    print("url request: $urlRequest");

    try {
      final response = await http.get(urlRequest, headers: header);
      //print("status code respuesta: ${response.statusCode}");
      print("respuesta: ${response.body}");
      return validateResponse(response);
    } on SocketException catch (e) {
      throw ServerError(e.toString(), 0);
    } on TimeoutException catch (e) {
      throw ServerError(e.toString(), 0);
    } on http.ClientException catch (e) {
      throw ServerError(e.toString(), 0);
    }
  }

  Future<RespuestaEquipo> obtenerEquipos() async {
    final response = await _get('api/Equipo/EquiposPorGrupo?grupoID=');
    Map<String, dynamic> json = jsonDecode(response.body.toString());
    return RespuestaEquipo.fromJson(json);
  }
}
