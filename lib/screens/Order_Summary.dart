import 'package:flutter/material.dart';

class Order_Summary extends StatefulWidget {
  const Order_Summary({
    super.key,
    required this.clothType,
    required this.clothColor,
    required this.size,
    required this.quantity,
    required this.price,
  });

  final String clothType;
  final String clothColor;
  final String size;
  final String quantity;
  final String price;

  @override
  State<Order_Summary> createState() => _Order_SummaryState();
}

class _Order_SummaryState extends State<Order_Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summary'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.girl),
              title: Text("cloth type is ${widget.clothType}"),
            ),
            ListTile(
              leading: Icon(Icons.color_lens),
              title: Text("cloth color is ${widget.clothColor} "),
            ),
            ListTile(
              leading: Icon(Icons.photo_size_select_actual_rounded),
              title: Text(" your Size is ${widget.size}"),
            ),
            ListTile(
              leading: Icon(Icons.photo_size_select_actual_rounded),
              title: Text(" your Quantity is ${widget.quantity}"),
            ),
            ListTile(
              leading: Icon(Icons.photo_size_select_actual_rounded),
              title: Text(" your Price is ${widget.price}"),
            ),
          ],
        ),
      ),
    );
  }
}
