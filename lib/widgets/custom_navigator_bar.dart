import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.map,
          ),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.directions,
          ),
          label: 'Direcciones',
        )
      ],
    );
  }
}
