import 'package:flutter/material.dart';
import 'package:woo_widget_input/woo_widget_input.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? inputEmail;
  String? inputPassword;
  String? inputTest;

  String? validateEmail(String? value) {
    return value == null || value.isEmpty ? 'Error email' : null;
  }

  String? validatePassword(String? value) {
    return value == null || value.isEmpty || value.length < 6
        ? 'Error password'
        : null;
  }

  String? validateInputTest(String? value) {
    return value == null || value.isEmpty
        ? 'Error ce champs est obligatoire'
        : null;
  }

  Map<String, dynamic> createConnexion() {
    return {
      'email': inputEmail,
      'password': inputPassword,
      'test': inputTest,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 370.0,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              InputCustom.email(
                validator: (value) => validateEmail(value),
                onChange: (value) => inputEmail = value,
              ),
              InputCustom.password(
                validator: (value) => validatePassword(value),
                onChange: (value) => inputPassword = value,
              ),
              InputCustom(
                validator: (value) => validateInputTest(value),
                onChange: (value) => inputTest = value,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final formValue = createConnexion();
                    print(formValue);
                  }
                },
                child: const Text('Valider'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
