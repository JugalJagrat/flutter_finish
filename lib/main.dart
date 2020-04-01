import 'package:flutter/material.dart';

void main() {
  runApp(First());
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Scaffold(
          appBar: AppBar(
            title: Text("First App"),
          ),
          body: FirstDynamic(),
        ));
  }
}

class FirstDynamic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstDynamicState();
  }
}

class _FirstDynamicState extends State<FirstDynamic> {
  String msg = 'Flutter RaisedButton example';
  var x;
  var y;
  TextEditingController numberController1 = TextEditingController();
  TextEditingController numberController2 = TextEditingController();

  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'I have Change example ';
      } else {
        msg = 'Flutter RaisedButton example';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: numberController1,
             keyboardType: TextInputType.number,
                decoration: InputDecoration(border: OutlineInputBorder())),
            SizedBox(height: 15),
            TextField(
                controller: numberController2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(border: OutlineInputBorder())),
           /* Text(
              msg,
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),*/
            SizedBox(height: 15),
            RaisedButton(
              child: Text("Rock & Roll"),
              onPressed:
              ()
              {

                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text the user has entered by using the
                      // TextEditingController.
                      content: Text((int.parse(numberController1.text)+int.parse(numberController2.text)).toString()),
                    );
                  },
                );
              },
              color: Colors.red,
              textColor: Colors.yellow,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              splashColor: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
