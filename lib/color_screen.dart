import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/color': (context) => ColorScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/color', arguments: Colors.red);
              },
              child: Text('Red'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/color', arguments: Colors.yellow);
              },
              child: Text('Yellow'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/color', arguments: Colors.blue);
              },
              child: Text('Blue'),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = ModalRoute.of(context)!.settings.arguments as Color;
    return Scaffold(
      appBar: AppBar(title: Text('Color Screen')),
      backgroundColor: color,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}