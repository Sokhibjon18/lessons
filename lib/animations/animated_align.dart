import 'package:flutter/material.dart';

class AlignExample extends StatefulWidget {
  @override
  _AlignExampleState createState() => _AlignExampleState();
}

class _AlignExampleState extends State<AlignExample> {
  Alignment _alignment = Alignment.center;

  void _toggleAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.center
          ? Alignment.bottomRight
          : Alignment.center;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlign Example'),
      ),
      body: GestureDetector(
        onTap: _toggleAlignment,
        child: AnimatedAlign(
          alignment: _alignment, 
          duration: const Duration(
              seconds: 10), 
          curve: Curves.easeInOut, 
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
