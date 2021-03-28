import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Sliders'),
       ),
       body: Container(
         padding: EdgeInsets.only(top:50.0),
         child: Column(
           children: [
             _crearSlider(),
             _crearCheckBox(),
             _crearSwitch(),
             Expanded(child: _crearImagen()),
           ],
         ),
       ),
    );
  }

  Widget _crearSlider(){

    return Slider(
      activeColor: Colors.black,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : ( valor )=> setState(() { _valorSlider = valor;})
    );

  }

  Widget _crearCheckBox() {
    // Aquí sólo hacemos click especificamente sobre el checkbox

    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (value) => setState(() {_bloquearCheck = value;})
    // );

    //Con este método podemos hacer clic en toda la zona del listTile del checkbox
    // además de agregar más personalización como un title
    return CheckboxListTile(
      title: Text('Bloquear Slider checkbox'),
      value: _bloquearCheck,
      onChanged: (value)=>setState(() {_bloquearCheck = value;}),
    );

  }

  Widget _crearSwitch(){
    // Aquí sólo hacemos click especificamente sobre el switch

    // return Switch(
    //   value: _bloquearCheck,
    //   onChanged: (value) => setState(() {_bloquearCheck = value;})
    // );

    //Con este método podemos hacer clic en toda la zona del listTile del Switch
    // además de agregar más personalización como un title
    return SwitchListTile(
      title: Text('Bloquear Slider switch'),
      value: _bloquearCheck,
      onChanged: (value)=>setState(() {_bloquearCheck = value;}),
    );

  }

  Widget _crearImagen(){

    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/8f/72/af/8f72aff53076fe47b16bb2e0e8526dbc.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }

}