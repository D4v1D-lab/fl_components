import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Mario',
    'Kirbi',
    'Pikachu',
    'Captain Falcon',
    'Ness',
    'King Kong'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Este es el appbar :v en listview 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
            trailing: const Icon(
              Icons.navigate_next_outlined,
              color: AppTheme.primary,
            ),
            title: Text(options[index]),
            onTap: () {
              final smashbros = options[index];
              // ignore: avoid_print
              print(smashbros);
            }),
        itemCount: options.length,
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
