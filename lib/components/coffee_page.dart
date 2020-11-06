import 'package:flutter/material.dart';

class CoffeePage extends StatelessWidget {
  final String title;
  CoffeePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: new InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text("タイトル"),
                      children: <Widget>[
                        // コンテンツ領域
                        SimpleDialogOption(
                          onPressed: () => Navigator.pop(context),
                          child: Text("１項目目"),
                        ),
                      ],
                    );
                  },
                );
                print("tappedllll");
              },
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Blond Roast',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
                color: Colors.yellow,
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                print("tapped");
              },
              child: Container(
                width: 100.0,
                height: 100.0,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('images/WillowBlend.png'),
              title: Text('Willow Blend'),
              subtitle: Text('Crisp & Sytrus'),
              trailing: Icon(Icons.favorite),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('images/LightNoteBlend.png'),
              title: Text('Light Note Blend'),
              subtitle: Text('Mellow & Soft'),
              trailing: Icon(Icons.favorite),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('images/LightNoteBlend.png'),
              title: Text('Light Note Blend'),
              subtitle: Text('Mellow & Soft'),
              trailing: Icon(Icons.favorite),
            ),
          ),
        ],
      ),
    );
  }
}
