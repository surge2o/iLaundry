import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:test/screens/Order_Summary.dart';

// ignore: camel_case_types
class Place_Order extends StatefulWidget {
  const Place_Order({super.key});

  @override
  State<Place_Order> createState() => _Place_OrderState();
}

// ignore: camel_case_types
class _Place_OrderState extends State<Place_Order> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController clothType = TextEditingController();
  final TextEditingController clothColor = TextEditingController();
  final TextEditingController size = TextEditingController();
  final TextEditingController quantity = TextEditingController();
  final TextEditingController price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selected item"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Gap(20),
                  TextFormField(
                    decoration: InputDecoration(
                      label: const Text("Cloth Type"),
                      hintText: "e.g T-Shirt",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    controller: clothType,
                    validator: (value) {
                      if (value == "") {
                        return "Cloth Type Required";
                      }
                      if (value!.length < 3) {
                        return " must be greater than 3 ";
                      }
                      return null;
                    },
                  ),
                  const Gap(20.0),
                  TextFormField(
                    controller: clothColor,
                    validator: (value) {
                      if (value == "") {
                        return " Color Can't be empty";
                      }
                      if (value!.length < 2) {
                        return " must be greater than 2";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text(" Cloth Color"),
                      hintText: "Red or Green",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const Gap(20),
                  TextFormField(
                    controller: size,
                    validator: (value) {
                      if (value == "") {
                        return " Size can't be empty";
                      }
                      if (value!.length < 1) {
                        return " must be greater than 2";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text("Size"),
                      hintText: "M/L/XL",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const Gap(20),
                  TextFormField(
                    controller: quantity,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      if (value == "") {
                        return "can't be empty ";
                      }
                      if (int.parse(value!) < 1) {
                        return "must be greater than 0 ";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text("Quantity"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const Gap(20),
                  TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return " amount can't be empty";
                      }
                      if (int.parse(value!) < 1) {
                        return "enter a valid amount";
                      }
                      return null;
                    },
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: price,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: const Text("Price"),
                      prefixText: " ₦",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Gap(50),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print(clothType.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Order_Summary(
                                clothColor: clothColor.text,
                                clothType: clothType.text,
                                size: size.text,
                                price: price.text,
                                quantity: quantity.text),
                          ),
                        );
                      }
                    },
                    child: const Text("Proceed"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
