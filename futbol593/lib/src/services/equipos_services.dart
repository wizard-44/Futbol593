
import 'package:futbol593/src/models/equipo_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EquipoService {
  EquipoService();

  Future<List<Equipos>?> getEquipos() async {
    List<Equipos> result = [];
    try {
      var url =
          Uri.parse('');
      var response = await http.get(url);
      if (response.body.isEmpty) return result;
      List<dynamic> listBody = json.decode(response.body);
      for (var item in listBody) {
        var equipo = Equipos.fromJson(item);
        result.add(equipo);
      }
      return result;
    } catch (ex) {
      // ignore: avoid_print
      print(ex);
      return null;
    }
  }
}