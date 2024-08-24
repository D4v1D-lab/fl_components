// ignore_for_file: avoid_print

import 'package:fl_components/screens/screens.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'David',
      'last_name': 'Martinez',
      'email': 'deividfrend@gmail.com',
      'password': '123456',
      'role': 'admin',
    };
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y forms')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Nombre', labelText: 'Nombre del usuario'),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Apellido', labelText: 'Apellido del usuario'),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Correo', labelText: 'Correo del usuario'),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Password', labelText: 'Password'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')))),
            ],
          ),
        ),
      )),
    );
  }
}
