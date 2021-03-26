import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        //Cambiamos RaisedButton por ElevatedButton, Gracias, Flutter r.r
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () =>_mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert( BuildContext context){

    showDialog(

      context: context,
      // El barrierDismissible es para saber si cuando damos un click fuera de la 
      //zona del alert queremos que se cierre, true es si, false no, a mi me da comodidad
      //El mantenerlo en true
      barrierDismissible: true,
      builder: (context){

        return AlertDialog(
          shape:RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la caja de alerta'),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: [
            //Remplazamos FlatButton por TextButton como dice el señor flutter
            TextButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
          ],
        );

      }
    );

  }

}