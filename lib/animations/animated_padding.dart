import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaddingExample(),
    );
  }
}

class PaddingExample extends StatefulWidget {
  @override
  _PaddingExampleState createState() => _PaddingExampleState();
}

class _PaddingExampleState extends State<PaddingExample> {
  double _paddingValue = 16.0;

  void _togglePadding() {
    setState(() {
      _paddingValue = _paddingValue == 16.0 ? 32.0 : 16.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding Example'),
      ),
      body: GestureDetector(
        onTap: _togglePadding,
        child: AnimatedPadding(
          padding: EdgeInsets.all(
              _paddingValue), // Paddingni animatsiya bilan o'zgartiramiz
          duration:
              Duration(seconds: 1), // Animatsiya davomiylik vaqti 1 sekund
          curve: Curves.easeInOut, // Animatsiya tezligi
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
