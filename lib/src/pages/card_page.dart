import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all( 10.0 ),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Descripción de la tarjeta que tiene que ser largo so yolo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Cambio de flatButton a TextButton por actualización de Flutter
              TextButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );

  }

  Widget _cardTipo2(){
    
    //Por fines de estetica se cambia el Card por container
    //No es necesario con el siguiente comentario podemos omitir
    //todos los pasos extras
    //return Card(
    final card = Container(
      // Primera solución para la imagen fuera de los bordes
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://fondosmil.com/fondo/33597.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Atardecer en Camboya')
          ),
        ],
      ),
    );

    //Se almacena el Widget Card en un final para darle solución con
    //un container a las esquinas de la imagen (Solución 2), esto en caso
    //de que la primera solución no funcione (A mi me funcionan ambas, Lol)

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        //El color es sólo para visualizar la tarjeta
        //color: Colors.blue
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );

  }

}