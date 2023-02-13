import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: const[
        
          CustomCardType1(),
          SizedBox( height: 20 ),
          CustomCardType2(name:'Isla tropical', imageURL:'https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w'),
          SizedBox( height: 20 ),
          CustomCardType2(name:'The Avengers (2012) ', imageURL: 'https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2022/04/Resena-The-Avengers-el-crossover-que-cambio-la-industria-del-cine.jpg?fit=1280%2C720&quality=80&ssl=1'),
          SizedBox( height: 20 ),
          CustomCardType2(name:null,imageURL: 'https://static.wikia.nocookie.net/marvels-avengers4475/images/6/63/N7UmKNPcZKKZNb8J1PxPWgsa~2.jpg/revision/latest/scale-to-width-down/1200?cb=20220903204205'),
          SizedBox( height: 20 ),
          CustomCardType2(imageURL: 'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2019/04/hipertextual-nuevo-trailer-avengers-endgame-agradece-fans-universo-marvel-2019351167.jpg?fit=1200%2C675&quality=60&strip=all&ssl=1'),
          SizedBox( height: 20 ),
          CustomCardType2(imageURL: 'https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/C51A56C3384C591B97307242E57348EB7BAAD01D81CDD37BA20DFBEABB36BB7B/scale?width=1200&aspectRatio=1.78&format=jpeg'),
      ]),
    );
  }
}

