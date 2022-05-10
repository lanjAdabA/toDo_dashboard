// ignore_for_file: unnecessary_new, unused_import

import 'package:flutter/material.dart';

import 'package:dashboard/dashboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new Dashboard(title: 'Flutter Demo Home Page'),
      home: const Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  get actionsIconTheme => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
        elevation: .1,
        backgroundColor: Colors.orange[100],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Most priority task", Icons.star_border),
            makeDashboardItem("work", Icons.add_business),
            makeDashboardItem("work", Icons.mark_unread_chat_alt_rounded),
            makeDashboardItem("work", Icons.account_box_rounded),
            makeDashboardItem("work", Icons.sports_martial_arts_outlined),
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 1.0,
        margin: const EdgeInsets.all(8.0),
        child: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                const SizedBox(height: 50),
                Center(
                    child: Icon(
                  icon,
                  size: 50,
                  color: Colors.black,
                )),
                const Text(
                  "5 tasks",
                  textAlign: TextAlign.end,
                ),
                const Text("new"),
                const SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}
