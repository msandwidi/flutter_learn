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
  var _currencies = ["Dollar", "Rubi", "Pound", "Euro"];
  String _itemSelected = "Dollar";

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
                  this.city = input;
                });
              },
            ),
            DropdownButton<String>(
              items: _currencies.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String item) {
                setState(() {
                  this._itemSelected = item;
                });
              },
              value: _itemSelected,
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
