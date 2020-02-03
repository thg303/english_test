import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final Function onSubmit;
  final String caption;
  
  Option ({this.onSubmit, this.caption});

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return FloatingActionButton(
        onPressed: () => onSubmit(this.caption),
        child: Text(this.caption),
      ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
