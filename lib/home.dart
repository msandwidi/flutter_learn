import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.lightBlue[700],
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Hello My name is mamadou sandwidi",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Text(
                    "There",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
