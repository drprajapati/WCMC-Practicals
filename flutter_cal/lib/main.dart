import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.purple, cursorColor: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController textEditingController =
      new TextEditingController();
  final TextEditingController textEditingControllerOne =
      new TextEditingController();
  int sum, num1, num2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator", style: TextStyle(color: Colors.purple)),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: new Container(
        color: Colors.white,
        child: new Padding(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(30.0),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    labelText: "Enter the number",
                    labelStyle:
                        new TextStyle(color: Colors.purple, fontSize: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  controller: textEditingController,
                ),
              ),
              new Padding(
                padding: EdgeInsets.all(30.0),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    labelText: "Enter the number",
                    labelStyle:
                        new TextStyle(color: Colors.purple, fontSize: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  controller: textEditingControllerOne,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new OutlineButton(
                    child: new Text("+"),
                    borderSide: new BorderSide(color: Colors.purple),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    textColor: Colors.purple,
                    padding: EdgeInsets.all(10),
                    onPressed: doAddition,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void doAddition() {
    num1 = int.parse(textEditingController.text);
    num2 = int.parse(textEditingControllerOne.text);
    sum = num1 + num2;
    Fluttertoast.showToast(
        msg: "Addition:  $sum",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.purple);
  }
}
