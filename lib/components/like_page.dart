import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  final String title;
  LikePage({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Like'),
    ));
  }
}
