import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Statefull",
    home: FavoriteCity(),
  ));
}

// statefull widget
class FavoriteCity extends StatefulWidget {
  @override
  _FavoriteCityState createState() => _FavoriteCityState();
}

//state class
class _FavoriteCityState extends State<FavoriteCity> {
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String input) {
                setState(() {
                  city = input;
                });
              },
            ),
            Text(
              "you enterer $city",
              style: TextStyle(
                fontSize: 24.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
