import 'package:flutter/material.dart';

void main() {
  return runApp(
    MyWidget(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dicee"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.indigo,
                Colors.purple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/dice1.png",
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/dice2.png",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
