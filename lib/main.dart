import 'package:flutter/material.dart';
import 'package:test/screens/MyHomeScreen.dart';
import 'package:test/screens/login_screen.dart';

void main() {
  runApp(const ilundry());
}

class ilundry extends StatefulWidget {
  const ilundry({super.key});

  @override
  State<ilundry> createState() => _ilundryState();
}

class _ilundryState extends State<ilundry> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
        top: 25,
        right: 25,
      ),
      height: 150.0,
      width: double.infinity,
      color: Colors.blue,
      child: Center(
        child: Text(
          "My Order".toUpperCase(),
          style: const TextStyle(
              fontSize: 25.0, color: Colors.white, fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}

class Complited extends StatelessWidget {
  const Complited({super.key, required this.textDate});
  final String textDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      height: 150,
      width: 140,
      color: Colors.blue,
      child: Center(
        child: Text(
          textDate,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
