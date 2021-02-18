import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;


class _MenuProvider {

  List<dynamic> options = [];

  _MenuProvider(){
    buildData();
  }

  Future<List<dynamic>> buildData() async{

    final resp = await rootBundle.loadString('data/menu_opt.json');

    Map dataMap = json.decode(resp);
    options = dataMap['routes'];

      return options;
  }
}

final menuProvider = new _MenuProvider();