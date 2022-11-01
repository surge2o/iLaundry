import 'package:flutter/material.dart';
import 'package:test/main.dart';
import 'package:test/screens/Setting_Screen.dart';
import 'package:test/screens/goto_Screen.dart';
import 'package:test/screens/login_screen.dart';
import 'Selected_Item.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              goto(context, const SettingScreen());
            },
            child: const Icon(Icons.settings),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
          ),
        ],
        title: const Center(
          child: Center(
            child: Text(
              "iLundry",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
            width: 10,
          ),
          const Center(
            child: Text(
              "MY iLundry Data",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const MyOrders(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Complited(
                textDate: "       42\nComplited",
              ),
              Complited(
                textDate: "      32\n Requried",
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                child: Container(
                  height: 150.0,
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Place_Order(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.yellow,
                    child: const Center(
                      child: Text(
                        " Place Order ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 105),
                child: GestureDetector(
                  onTap: () {
                    goto(context, LoginScreen());
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        " Exit ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
