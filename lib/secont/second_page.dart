

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({required this.sanKelet});
  int sanKelet; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Ekinchi bet',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                child: Text('San: $sanKelet'),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 35,
                ))
          ],
        ),
      ),
    );
  }
}
