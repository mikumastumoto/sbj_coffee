import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  final String title;
  LikePage({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text('L'),
        ));
  }
}
