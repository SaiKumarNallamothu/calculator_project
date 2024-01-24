import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text('0',
                  style: TextStyle(fontSize: 40, color: Colors.white)),
            ),
            height: 70,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.deepOrange,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Center(
                  child: Text('7',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('8',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('9',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Center(
                  child: Text('4',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('5',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('6',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Center(
                  child: Text('1',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('2',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('3',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Center(
                  child: Text('0',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('+',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('-',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Center(
                  child: Text('X',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('/',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('=',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Center(
                  child: Text('C',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                child: Center(
                  child: Text('<-',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
17 containers
1.0-9 numbers 3x3 10
2.+-* /= (5)
3.clear,backspace 2
*/
