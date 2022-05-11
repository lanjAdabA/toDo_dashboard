// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

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
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            buildQuoteCard(),
            Row(
              children: [
                buildRoundedCard(),
                buildRoundedCard1(),
              ],
            ),
            Row(
              children: [
                buildRoundedCard2(),
                buildRoundedCard3(),
              ],
            ),
          ],
        ),
      );

  Widget buildQuoteCard() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Most Priority Task',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'task title',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Text(
                'task title description',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildRoundedCard() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Rounded card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
                width: 50,
              ),
              Text(
                'This card',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      );

  Widget buildRoundedCard1() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Rounded card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
                width: 50,
              ),
              Text(
                'This card',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      );
  Widget buildRoundedCard2() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Rounded card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
                width: 50,
              ),
              Text(
                'This card',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      );

  Widget buildRoundedCard3() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Rounded card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
                width: 50,
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
