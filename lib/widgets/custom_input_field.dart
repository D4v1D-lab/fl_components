// ignore_for_file: avoid_print

import '../screens/screens.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: (value) {
        if (value == null) return 'Please enter an input here...';
        return value.length < 3 ? 'Its required 3 characters' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.green)),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))),
      onChanged: (value) {
        print('value: $value');
      },
    );
  }
}
