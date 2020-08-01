import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text("Count App"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ButtonDemo(),
      ),
    ));
  }
}

class ButtonDemo extends StatefulWidget {
  ButtonDemo({Key key}) : super(key: key);
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  var number = 0;
  var color = Colors.black;
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Count App",
            style: GoogleFonts.getFont('Lato',
                fontSize: 40.0,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '$number',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: 160.0,
              fontFamily: 'Roboto',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RawMaterialButton(
                fillColor: Colors.green,
                splashColor: Colors.greenAccent,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "plus",
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                onPressed: _add,
                shape: const StadiumBorder(),
              ),
              RawMaterialButton(
                fillColor: Colors.red,
                splashColor: Colors.redAccent,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.format_indent_decrease,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "minus",
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                onPressed: _minus,
                shape: const StadiumBorder(),
              )
            ],
          )
        ],
      ),
    ));
  }

  _add() {
    setState(() {
      number = number + 1;
    });
  }

  _minus() {
    setState(() {
      number = number - 1;
    });
  }
}
