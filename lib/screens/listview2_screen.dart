import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Superman',
    'Mario Bros',
    'Kirby',
    'Shaggy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview tipo 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: ((context, i) => ListTile(
                title: Text(options[i]),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo,),
                onTap: () {
                  final game = options[i];
                },
              )),
          separatorBuilder: ((_, __) => const Divider()),
        ));
  }
}
