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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: App000(),
    );
  }
}

class App000 extends StatelessWidget {
  const App000({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/sukuna.jpg'),
              radius: 60,
            ),
            Text(
              'sukuna',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'professional killer',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Card(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.cyan,
                ),
                title: Text(
                  '06 00 01 01 02 03',
                  style: TextStyle(color: Colors.black87, fontSize: 23),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.cyan,
                ),
                title: Text(
                  'sukuna100sk@gmail.com',
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 100,
              child: Row(
                children: [
                  Image.asset(
                    'images/hhhh.jpg',
                    height: 400,
                    width: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
