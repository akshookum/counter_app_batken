import 'package:counter_app/ekinchi_bet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int san = 0;
  void kemit() {
    setState(() {
      san = san - 1;
    });
  }

  void kosh() {
    setState(() {
      san = san + 1;
    });
  }

  void otkoz() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => EkinchiBet(
                sanKelet: san,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Counter App',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
              child: Text('San:$san'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: kemit,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: kosh,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: otkoz,
            child: Icon(
              Icons.skip_next,
              size: 55,
            ),
          ),
        ],
      ),
    );
  }
}
