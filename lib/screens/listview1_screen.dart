import 'package:fl_components/screens/screens.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Mario',
    'Kirbi',
    'Pikachu',
    'Captain Falcon',
    'Ness',
    'King Kong'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Este es el appbar :v'),
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                  leading: const Icon(
                    Icons.thumb_up,
                    color: AppTheme.primary,
                  ),
                  title: Text(e)))
              .toList(),
          const SizedBox(
            width: 20,
          ),
          // ListTile(
          //     leading: Icon(Icons.thumb_up),
          //     title: Text('ahi viene el padding'))
        ],
      ),
    );
  }
}
