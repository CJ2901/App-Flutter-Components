import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mando the Mandalorian'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('M'),
            ),
          )
        ]
        ),

      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/87825645?s=400&u=3185081a6404e035a4b4d7322771c4ffb41a5ea6&v=4'),
         ),
      ),
    );
  }
}