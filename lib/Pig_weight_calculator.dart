import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PIG_WEIGHT_CALCULATOR',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "PIG WEIGHT",
                  style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold, color: Colors.pinkAccent),
                ),
              ),
              Center(
                child: Text(
                  "CALCULATOR",
                  style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold , color: Colors.pinkAccent),
                ),
              ),
              Image(
                image:
                AssetImage('assets/images/pig.png'),
                width: 300,
                height: 200,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        width: 100,
                        height: 200,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        width: 100,
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    var input = _controller.text;
                    var guess = double.tryParse(input);
                  },
                  child: Text("CALCULATE",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold , color: Colors.white),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}