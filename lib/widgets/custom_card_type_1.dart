import 'package:fl_components/screens/screens.dart';

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
            leading: Icon(
              Icons.book,
              color: AppTheme.primary,
            ),
            // tileColor: Colors.black,
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Hola we esto es un un subtitulo, no tengo Lorem ipsu asi que es lo ques hay'),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (() {}),
                  child: const Text('OK'),
                ),
                TextButton(onPressed: (() {}), child: const Text('CANCEL'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
