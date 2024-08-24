import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: ((context) => CupertinoAlertDialog(
              title: const Text('Titulo'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancelar'))
              ],
            )));
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: ((context) => AlertDialog(
              elevation: 5,
              title: const Text('Titulo'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10)),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Contenido de alerta we'),
                  SizedBox(height: 50),
                  FlutterLogo(
                    size: 75,
                  )
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancelar'))
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
              // onPressed: () => displayDialogAndroid(context),
              onPressed: () => displayDialogIOS(context),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Mostrar alerta',
                  style: TextStyle(fontSize: 25),
                ),
              )),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
