import 'package:flutter/material.dart';
import 'package:test_package/widget_shared/bottom_nav.dart';
import 'package:test_package/widget_shared/input.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: const [
              Text('coucou'),
              Input(),
            ],
          ),
        ),
        bottomNavigationBar: const NavBottom()
      ),
    );
  }
}
