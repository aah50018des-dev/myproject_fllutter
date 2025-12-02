import 'package:flutter/material.dart';
import 'package:lastproject/Account.dart';
import 'package:lastproject/Searche.dart';
import 'package:lastproject/Setting.dart';
import 'package:lastproject/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'TASK4',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indbot = 0;
  List<Widget> pages = [
    Home(),
    Setting(),
    Account(),
    Searche(),
  ];
  String titleapp(int index) {
    switch (index) {
      case 0:
        return 'home';
      case 1:
        return 'settings';
      case 2:
        return 'account';
      case 3:
        return 'searche';
      default:
        return 'home';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.purple,
          child: BottomNavigationBar(
              currentIndex: indbot,
              onTap: (index) {
                setState(() {
                  // print(indbot);
                  indbot = index;
                });
              },
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.black38,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "settings"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box), label: "account"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "search"),
              ]),
        ),
        appBar: AppBar(
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(titleapp(indbot)),
          backgroundColor: Colors.amber,
        ),
        body: IndexedStack(
          children: pages,
          index: indbot,
        ));
  }
}
