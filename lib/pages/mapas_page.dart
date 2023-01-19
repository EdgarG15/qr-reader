import 'package:flutter/material.dart';

class MapasPage extends StatelessWidget {
  const MapasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, int index) {
        return ListTile(
          leading: Icon(Icons.map, color: Theme.of(context).primaryColor),
          title: const Text('http://sdbfjsdnfsdnkfndk'),
          subtitle: const Text('ID: 1'),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.green,
          ),
          onTap: () => print('hola'),
        );
      },
    );
  }
}
