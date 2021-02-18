import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sliderValue = 100.0;
  bool   _blockSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _createSlider(),
            _createCheckbox(),
            _createSwitch(),
            Expanded(child: _createImageSlider()),
          ],
        )
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imágen',
      value: _sliderValue,
      min: 10,
      max: 400.0,
      onChanged: ( _blockSlider ) ? null : (value){
        setState(() {
          _sliderValue = value;
        });
      }
      );
  }

  Widget _createImageSlider() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/37/01/ab/3701ab4d685e7ccc686bef3714b80275.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckbox() {

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      activeColor: Colors.indigoAccent,
      value: _blockSlider,
      onChanged: (value){
        setState(() {
          _blockSlider = value;
        });
      }
    );
  }

  _createSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      activeColor: Colors.indigoAccent,
      value: _blockSlider,
      onChanged: (value){
        setState(() {
          _blockSlider = value;
        });
      }
    );
  }
}