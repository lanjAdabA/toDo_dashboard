import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'DashBoard';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: const MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  // ignore: use_key_in_widget_constructors
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
          // backgroundColor: Colors.grey,
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
                buildRoundedCard2(),
                buildRoundedCard1(),
                buildRoundedCard2(),
              ],
            ),
          ],
        ),
      );

  buildQuoteCard() => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Most Priority Task",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  /* Align(
                          alignment: Alignment.centerRight,
                        ),
                        */
                  Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.red,
                    size: 30,
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
      );

  buildRoundedCard1() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.work_outline_rounded,
                      size: 32,
                      color: Colors.brown,
                    ),
                    Text(
                      "5 tasks",
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Work",
                        style: TextStyle(color: Colors.black, fontSize: 24)),
                    const Text("office project work",
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("2-completed",
                            style:
                                TextStyle(color: Colors.green, fontSize: 14)),
                        Text("2-due",
                            style: TextStyle(color: Colors.red, fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      );

  buildRoundedCard2() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.home_outlined,
                      size: 32,
                      color: Colors.brown,
                    ),
                    Text(
                      "5 tasks",
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Work",
                        style: TextStyle(color: Colors.black, fontSize: 24)),
                    const Text("office project work",
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("2-completed",
                            style:
                                TextStyle(color: Colors.green, fontSize: 14)),
                        Text("2-due",
                            style: TextStyle(color: Colors.red, fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      );
}
