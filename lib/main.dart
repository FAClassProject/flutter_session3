import 'package:flutter/material.dart';
import 'package:flutter_session3/tab1.dart';

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

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(title: Text("Flutter Session 3"),
            bottom: TabBar(tabs: [
              Text("Tab1Layout"),
              Icon(Icons.access_alarms),
              Icon(Icons.house),
            ]),
          ),


          body: TabBarView(children: [
            Tab1Layout(),
            Center(child: Text("Tab2Layout", style: TextStyle(fontSize: 40, color: Colors.deepPurple),)),
          ]),

          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarms),
                label: "Alarm"),
            BottomNavigationBarItem(icon: Icon(Icons.add_call),
                label: "Call"),

          ]),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){}),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

          drawer: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("Aptech"),
                  ),
                  accountName: Text("Aptech"), accountEmail: Text("aptech@gmail.com")),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
              ListTile(
                title: Text("Change Password"),
                leading: Icon(Icons.password),
              ),
              ListTile(
                title: Text("Account"),
                leading: Icon(Icons.account_balance),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
