import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Message',
      theme: ThemeData(primaryColor: Colors.black, cursorColor: Colors.black),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  State createState() => new HomePageState();
}

class HomePageState extends State<MyHomePage> {
  final TextEditingController textEditingController =
      new TextEditingController();
  String statement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title:
              new Text("Custom Message", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.yellow,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        labelText: "Enter text",
                        labelStyle:
                            new TextStyle(color: Colors.black, fontSize: 20.0),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                      controller: textEditingController,
                    ),
                  ),
                  new OutlineButton(
                    child: new Text("Print"),
                    borderSide: new BorderSide(color: Colors.black),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    textColor: Colors.black,
                    padding: EdgeInsets.all(10),
                    onPressed: doPrint,
                  ),
                  new Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text("Output: $statement",
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontFamily: 'RobotMono',
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
          ),
        ));
  }

  void doPrint() {
    setState(() {});
    statement = textEditingController.text;
  }
}
