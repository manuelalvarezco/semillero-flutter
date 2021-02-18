import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

Widget _cardType1() {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Titulo de la tarjeta'),
          subtitle: Text(
              'Esta es la información que llevará la tarjeta para la prueba de cards'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}

Widget _cardType2() {
  return Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Column(
      children: [
        FadeInImage(
          image: NetworkImage(
              'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        // Image(
        //   image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
        // ),
        Container(padding: EdgeInsets.all(10.0), child: Text('No tengo idea'))
      ],
    ),
  );
}
