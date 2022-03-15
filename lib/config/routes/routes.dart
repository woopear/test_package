import 'package:flutter/material.dart';
import 'package:test_package/pages/connexion.dart';
import 'package:test_package/pages/home.dart';

class Routes {
  String homeUrl = '/';
  String connexionUrl = '/connexion';

  Map<String, Widget Function(BuildContext)> urls() {
    return {
      '/': (context) => const Home(),
      '/connexion': (context) => const FormulaireConnexion(),
    };
  }
}
