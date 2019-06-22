import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SourceSansPro'),
      home: MyHome(),
      title: 'Todolist',
    );
  }
}

class MyHome extends StatelessWidget {
  List<String> items = ['a', 'b', 'c', 'd', 'e'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: (73.0 / 948.0) * MediaQuery.of(context).size.height,
            margin: EdgeInsets.fromLTRB(
                (60.0 / 375.0) * MediaQuery.of(context).size.width,
                (60.0 / 948.0) * MediaQuery.of(context).size.height,
                0,
                0),
            child: Text(
              'Today',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .82,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * (860.0 / 948.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height *
                          (860.0 / 948.0) *
                          .50,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return Text(items[index]);
                        },
                        itemCount: items.length,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height *
                          (860.0 / 948.0) *
                          .50,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
