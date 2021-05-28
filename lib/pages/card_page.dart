import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF455A64),
        appBar: AppBar(
          title: Text('Cards'),
        ),

        body: ListView(
          children: <Widget>[
            card1(),
            card2(),
            card3(),
            card5(),
            card4(context),
          ],
        ));
  }

  Card card1() {
    return Card(
      color: Color(0xFFCFD8DC),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 10),
            title: Text('Card 1'),
            subtitle: Text('Aqui se puede colocar una descripción de este card.'),
            leading: Icon(Icons.home),
          ),
        ],
      ),
    );
  }

  Card card2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 50,
      color: Color(0xFF9CCC65),
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://www.ambientum.com/wp-content/uploads/2019/10/montanas-atardecer-696x464.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Text(' Imagen por URL | Montañas'),
          ),
        ],
      ),
    );
  }

  Card card3() {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        margin: EdgeInsets.all(25),
        elevation: 10,
        color: Color(0xFFB3E5FC),
        child: Column(
          children: <Widget>[
            Image.asset('assets/carro.jpg'),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Imagen por Assets | Auto Deportivo"),
            )
          ],
        ));
  }

  Card card5() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(19),
      elevation: 50,
      color: Color(0xFFFFF3E0),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 22),
            title: Text('Compra Tennis'),
            subtitle: Text('La mejor marca de tennis'),
            leading: Icon(Icons.airplanemode_on),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () => {launch('https://www.nike.com/mx/')},
                  child: Text('Abrir link'))
            ],
          )
        ],
      ),
    );
  }

  Card card4(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(30),
      elevation: 10,
      color: Color(0xFFE1BEE7),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
            title: Text('Card con dialogo'),
            subtitle: Text('Es un widget que nos proporciona el aspecto visual de una tarjeta.'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    _showDialog(context);
                  },
                  child: Text('Aceptar')),
              FlatButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  child: Text('Regresar'))
            ],
          )
        ],
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Hola'),
            content: Text('Bienvenido'),
            actions: <Widget>[
              FlatButton(
                  child: Text('Salir'),
                  onPressed: () {
                    Navigator.of(context).pop('Ok');
                  })
            ]);
      });
}