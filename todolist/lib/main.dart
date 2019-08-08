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

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  bool flag = true;

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
                          return Container(
                            height: MediaQuery.of(context).size.height *
                                (60.0 / 948.0),
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        flag = !flag;
                                      });
                                    },
                                    child: flag
                                        ? Image.asset('asset/icons/Marked.png')
                                        : Image.asset(
                                            'asset/icons/Unmarked.png'),
                                  ),
                                  top: MediaQuery.of(context).size.height *
                                      (16.0 / 948.0),
                                  left: MediaQuery.of(context).size.width *
                                      (16.0 / 375.0),
                                ),
                                Positioned(
                                  top: MediaQuery.of(context).size.height *
                                      (19.0 / 948.0),
                                  left: MediaQuery.of(context).size.width *
                                      (60.0 / 375.0),
                                  child: Text(
                                    'Start Making a Presentation',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.of(context).size.height *
                                      (24.0 / 948.0),
                                  left: MediaQuery.of(context).size.width *
                                      (347.0 / 375.0),
                                  child: Image.asset('asset/icons/work.png'),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: 1,
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
