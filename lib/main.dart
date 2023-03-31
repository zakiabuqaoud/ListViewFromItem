import 'package:flutter/material.dart';
import 'student.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Student> students = [
    Student("Adel", 23, DateTime.now()),
    Student("Zaki", 24, DateTime.now()),
    Student("Bilal", 25, DateTime.now()),
    Student("Saif", 26, DateTime.now()),
    Student("Ahmed", 27, DateTime.now()),
    Student("Abd", 28, DateTime.now()),
    Student("Hassan", 29, DateTime.now()),
    Student("Yasser", 30, DateTime.now()),
    Student("Khaled", 31, DateTime.now()),
    Student("Simon", 32, DateTime.now()),
    Student("kurt", 33, DateTime.now()),
    Student("jon", 34, DateTime.now()),
    Student("ben", 35, DateTime.now()),
    Student("lana", 36, DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ...students.map((value) {
              return Card(
                color: Colors.pinkAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(value.name,
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.white)),
                          Text(
                            '${value.age}',
                            style: const TextStyle(
                                fontSize: 30, color: Colors.white),
                          )
                        ],
                      ),
                      Text('${DateFormat.yMMM().format(value.birthday)}', style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,

                      ),)
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
