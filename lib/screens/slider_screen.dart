import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
         children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            autofocus: true,
            divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnabled
              ? (value) {
                _sliderValue = value;
                setState(() {});
                }
              : null
            ,
          ),
          const SizedBox( height: 10),
          SwitchListTile.adaptive(
            title: const Text('Habilitar ancho de Spidey'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) => setState(() { _sliderEnabled = value;}),
          ),
          const SizedBox( height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://static.wikia.nocookie.net/ficcion-sin-limites/images/c/cc/Ultimate_Spider-Man.png/revision/latest/scale-to-width-down/455?cb=20211121015447&path-prefix=es'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
      
          const SizedBox( height: 50)
      
         ] ,
      ),
    );
  }
}