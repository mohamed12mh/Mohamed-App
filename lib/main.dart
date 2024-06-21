import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    child: Image(
                      image: AssetImage('images/ahmd.png'),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  SizedBox(width: 34),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr ahmd',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        'Hert Specialist',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(width: 16),
                      Row(
                        children: [
                          customiconStyl(icon: Icons.mail),
                          SizedBox(width: 8),
                          customiconStyl(icon: Icons.phone),
                          SizedBox(width: 8),
                          customiconStyl(icon: Icons.video_call),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Text(
                'About',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'En un pequeño pueblo rodeado de montañas, vivía un anciano llamado Don Gregorio. Cada mañana, salía de su casa con una sonrisa, saludando a todos los vecinos con un entusiasmo contagioso. Su casa, ubicada al final de una calle empedrada, era conocida por el jardín lleno de flores de colores vibrantes que cuidaba con esmero',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[700],
                ),
              ),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}

class customiconStyl extends StatelessWidget {
  const customiconStyl({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Colors.orangeAccent,
        size: 32,
      ),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.deepOrange[50],
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
