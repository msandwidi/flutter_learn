import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(top: 35.0),
          alignment: Alignment.center,
          color: Colors.lightBlue[700],
          child: Column(
            children: <Widget>[
              Text(
                "Hello There",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
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
              FlightImageAsset(),
              BookFlightButton(),
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //image asset
    AssetImage imageaseet = AssetImage("images/image.png");

    //image
    Image image = Image(
      image: imageaseet,
    );

    //returned widget
    return Container(
      child: image,
    );
  }
}

class BookFlightButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      width: 250,
      height: 80,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          "Submit",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        onPressed: () => bookFlight(context),
        elevation: 10.0,
      ),
    );
  }

// book flight handler
  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked!"),
      content: Text("Your flight is booked successfully"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
