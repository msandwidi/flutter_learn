import 'package:flutter/material.dart';
import './home.dart';

main(List<String> args) {
  runApp(MaterialApp(
    title: "Baobab",
    home: Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: getLongListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("fab clicked");
        },
        child: Icon(Icons.add),
        tooltip: "Add One More Item",
      ),
    ),
  ));
}

// show snackbar
Widget showSnackBar(BuildContext context, String item) {
  var snackbar = SnackBar(
    content: Text("You added $item"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {
        debugPrint("Action pressed");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackbar);
}

// meant for a short list
Widget getListView() {
  var listview = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape clicked");
        },
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("It is time"),
        trailing: Icon(Icons.watch),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("My Number"),
        subtitle: Text("Beautiful view"),
      ),
    ],
  );
  return listview;
}

// generate long list of elements
List<String> getListElement() {
  return List<String>.generate(1000, (counter) => "counter $counter");
}

// generate long list view
Widget getLongListView() {
  var listItems = getListElement();

  var listView = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
        onTap: () => showSnackBar(context, listItems[index]),
      );
    },
  );
  return listView;
}
