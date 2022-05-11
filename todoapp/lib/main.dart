// ignore_for_file: use_key_in_widget_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'DashBoard';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.amber),
        home: const MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.home),
            Padding(padding: EdgeInsets.only(right: 12))
          ],
        ),
        body: Column(
          children: [
            buildQuoteCard(),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisCount: 2,
              children: [
                buildRoundedCard1(),
                buildRoundedCard1(),
                buildRoundedCard1(),
                buildRoundedCard1(),
              ],
            ),
          ],
        ),
      );

  buildQuoteCard() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Align(
                alignment: Alignment.topRight,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Most Priority Task",
                    style: TextStyle(color: Colors.red),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.work,
                        size: 40,
                        color: Colors.brown,
                      ),
                      const Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.grey,
                        size: 24,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Task Title",
                          ),
                          Text(
                            "Task Title Description",
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        /* Align(
                          alignment: Alignment.centerRight,
                        ),
                        */
                        Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.red,
                          size: 38,
                        ),
                        Text(
                          "Start",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text("2:00:00"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  buildRoundedCard1() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text(
                'Rounded card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12,
                width: 1,
              ),
              Text(
                'This card',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      );
}
