import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyList(),
    ));

class MyList extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<MyList> {
  List list = <String>['1', '2', '3'];

  int value = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewScroll'),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(list[index]));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value++;
            list.add('$value');
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
