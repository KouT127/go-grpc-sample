import 'package:flutter/material.dart';
import 'package:flutter_grpc_app/services/TodoService.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  String _id = "";
  String _title = "";
  String _description = "";

  void _incrementCounter() {
    final response = TodoService.getTodo();
    response.then((value) {
      setState(() {
        _id = value.todo.first.id;
        _title = value.todo.first.title;
        _description = value.todo.first.description;
      });
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
              '$_id',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              '$_title',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              '$_description',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
