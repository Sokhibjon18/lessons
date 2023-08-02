import 'package:flutter/material.dart';

class MySecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TweenAnimationBuilder<double>(
              duration: const Duration(seconds: 10),
              tween: Tween<double>(begin: 200, end: 500),
              builder: (context, value, child) {
                return Hero(
                  tag: 'myHeroTag',
                  child: Container(
                    width: value,
                    height: value,
                    color: Colors.red,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
