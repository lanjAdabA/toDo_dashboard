import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const TestWidget(title: 'Flutter Demo Home Page'),
    );
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  String title = 'before';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              color: Colors.green,
              height: 100,
              width: 100,
              child: Center(child: Text(title)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  title = "after";
                });
              },
              child: const Text("press")),
        ],
      ),
    );
  }
}
