import 'package:flutter/material.dart';
import './option.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = "";
  final String _answer = "bye";
  final String _question = "which one does not imply close meaning to the others?";
  final String _option1 = "hello";
  final String _option2 = "hi";
  final String _option3 = "bye";

  void _submitReply(String reply) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (reply == _answer) {
        _message = "nice job!";
      } else {
        _message = "that's not correct!";
      }
      print(reply);
    });
  }

  void _reset() {
    setState(() { _message = ''; });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_question),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Option(caption: _option1, onSubmit: _submitReply),
                SizedBox(height: 15),
                Option(caption: _option2, onSubmit: _submitReply),
                SizedBox(height: 15),
                Option(caption: _option3, onSubmit: _submitReply),
              ],
            ),
            SizedBox(height: 40),
            Text(_message)
            // Option(caption: _option1, onSubmit: _submitReply),
            // Option(caption: _option2, onSubmit: _submitReply),
            // Option(caption: _option3, onSubmit: _submitReply),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _reset,
        child: Icon(Icons.refresh),
        backgroundColor: Colors.orange,
        )
    );
  }
}
