import 'package:flutter/material.dart';

class CoffeePage extends StatelessWidget {
  final String title;
  CoffeePage({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Coffee'),
    ));
  }
}
