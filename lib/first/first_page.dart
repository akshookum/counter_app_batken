import 'dart:developer';

import 'package:counter_app/first/first_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../secont/second_page.dart';

class FirsPage extends StatelessWidget {
  FirsPage({super.key});

  FirstController _firstController = Get.put(FirstController());

  // void otkoz() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => SecondPage(
  //               sanKelet: san,
  //             )),
  //   );
  // }

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
              child: Text('San:${_firstController.san}'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: _firstController.kemit,
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
                onTap: _firstController.kosh,
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    sanKelet: _firstController.san.value,
                  ),
                ),
              );
            },
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
