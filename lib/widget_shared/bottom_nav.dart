import 'package:flutter/material.dart';
import '../config/routes/routes.dart';

class NavBottom extends StatefulWidget {
  const NavBottom({Key? key}) : super(key: key);

  @override
  State<NavBottom> createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  int path = 0;

  void changeIndex(int index) {
    setState(() {
      path = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: path,
      onTap: changeIndex,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes().homeUrl);
              changeIndex(0);
            },
            icon: const Icon(Icons.home),
          ),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes().connexionUrl);
              changeIndex(0);
            },
            icon: const Icon(Icons.person),
          ),
          label: 'Connexion',
        ),
      ],
    );
  }
}
