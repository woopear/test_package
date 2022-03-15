import 'package:flutter/material.dart';
import 'package:test_package/widget_shared/bottom_nav.dart';
import 'package:woo_widget_connexion/woo_widget_connexion.dart';

class FormulaireConnexion extends StatefulWidget {
  const FormulaireConnexion({Key? key}) : super(key: key);

  @override
  State<FormulaireConnexion> createState() => _FormulaireConnexionState();
}

class _FormulaireConnexionState extends State<FormulaireConnexion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Connexion'),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Center(
          child: InputConnexion(
            emailmargin: const EdgeInsets.only(top: 20.0, bottom: 50.0),
            resultForm: (value) {
              if (value != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text('Processing Data')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text('error Data'),
                  ),
                );
              }
            },
          ),
        ),
        bottomNavigationBar: const NavBottom(),
      ),
    );
  }
}
