import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {

  final opciones = [ 'unos', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
      //  children: _createItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _createItems(){

    List<Widget> lista = [];

    for (String opcion in opciones) {
      
      final tempWidget = ListTile(
        title: Text(opcion),
      );

      lista..add(tempWidget)
           ..add( Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map((item){
      return Column(
        children: [
          ListTile(
            title: Text('$item'),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}