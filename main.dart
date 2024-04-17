import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Bar App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(173, 216, 230, 1),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Menu Bar',style: TextStyle(color: Colors.white)),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu,color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // //set home page
              },
            ),
            ListTile(
              title: const Text('Message'),
              onTap: () {
                // //set message page
              },
            ),
            ListTile(
              title: const Text('Notification'),
              onTap: () {
                // //set notification page
              },
            ),
            ListTile(
              title: const Text('Setting'),
              onTap: () {
                // //set setting page
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {//set logout page
                },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Page',style: TextStyle(fontSize: 36)),
      ),
    );
  }
}
