import 'package:flutter/material.dart';

class Tree extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(),
                  Text('Flutter is super cool'),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                ),
              ),
              Text('Everything is a widget'),
              Text('The tree has many branches'),
            ],
          ),
        ),
      ),
    );
  }
}

