
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy una opción v:'),
            subtitle: Text('Occaecat duis Lorem aute sint consequat labore elit reprehenderit non incididunt.Reprehenderit do ea ea labore pariatur Lorem dolore irure deserunt.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){} ,
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){} ,
                  child: const Text('Ok'),
                ),
              ],
            ),
          )

        ],
    )
    );
  }
}