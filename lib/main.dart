import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MyWidget(),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int diceFace1 = 1; //initial value
  int diceFace2 = 1; //before build methood

  void rollBothDice() {
    diceFace1 = Random().nextInt(6) + 1;
    diceFace2 = Random().nextInt(6) + 1;
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(
                          () {
                            diceFace1 = Random().nextInt(6) + 1;
                          },
                        );
                      },
                      child: Image.asset(
                        "assets/images/dice$diceFace1.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          diceFace2 = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset(
                        "assets/images/dice$diceFace2.png",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  setState(
                    () {
                      rollBothDice();
                    },
                  );
                },
                label: Text(
                  "Roll both",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
