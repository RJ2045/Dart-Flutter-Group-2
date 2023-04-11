import 'package:flutter/material.dart';

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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Group 2 App'),
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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
          elevation: 20.0,
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Joseph Rogers"),
                accountEmail: Text("joerk2045@gmail.com"),
                currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C4D03AQG_062h-4Tjng/profile-displayphoto-shrink_100_100/0/1658825238514?e=1686787200&v=beta&t=V0gdeU4-iQlVaoDU2xEyXtP3roKDT2e0wM2KLJ2JkXA",), 
                radius: 50,
                ),
              ),
              ListTile(
                title: new Text("Profile"),
                leading: new Icon(Icons.person),
              ),
              ListTile(
                title: new Text("Bookmarks"),
                leading: new Icon(Icons.bookmark),
              ),
              ListTile(
                title: new Text("Social"),
                leading: new Icon(Icons.people),
              ),
              ListTile(
                title: new Text("Promotions"),
                leading: new Icon(Icons.local_offer),
              ),

              ListTile(
                title: new Text("Logout"),
                leading: new Icon(Icons.logout),
              )
            ],
          )),
    );
  }
}
// This trailing comma makes auto-formatting nicer for build methods

class mysp extends StatelessWidget {
  const mysp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}