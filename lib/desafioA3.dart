import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Third Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;

  void _incrementCounter1() {
    setState(() {

      _counter1++;
    });
  }
  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button +1 this many times:',
              ),
              Text(
                '$_counter1',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'You have pushed the button + this many times:',
              ),
              Text(
                '$_counter2',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _incrementCounter1,
              tooltip: 'Increment1',
              child: Icon(Icons.plus_one),
            ),
            FloatingActionButton(
              onPressed: _incrementCounter2,
              tooltip: 'Increment2',
              child: Icon(Icons.add),
            ),
          ],) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
