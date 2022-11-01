import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test/screens/MyHomeScreen.dart';
import 'package:test/screens/goto_Screen.dart';
import 'package:test/screens/sign_up_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController Email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool _ontrue = true;
  void _toggle() {
    setState(() {
      _ontrue = !_ontrue;
    });
  }

  bool _ischecked = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  const Gap(60),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      shape: BoxShape.rectangle,
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/laundry.jpg'),
                      ),
                    ),
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    height: 200,
                    width: 300,
                  ),
                  // const Gap(10),
                  const Gap(20),
                  const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return ' Please enter Email Address';
                        }
                        return null;
                      },
                      controller: Email,
                      decoration: InputDecoration(
                        label: const Text("Email"),
                        hintText: " example@gmail.com",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if (value == "") {
                          return " Enter User password ";
                        }
                      },
                      obscureText: _ontrue,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: (_toggle),
                          child: Icon(_ontrue
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        label: const Text("Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: _ischecked,
                              onChanged: ((bool? value) {
                                setState(() {
                                  _ischecked = value!;
                                });
                              }),
                            ),
                            const Text('Remember me')
                          ],
                        ),
                        TextButton(
                          onPressed: (() {}),
                          child: const Text('Forgot Password'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(200, 40), //////// HERE
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          goto(context, const MyHomeScreen());
                        }
                      },
                      child: const Text('Sign in'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                        ),
                        Text(
                          'or sign in with',
                          style: TextStyle(fontSize: 15),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black54,
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage("assets/images/fb.png"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 20,
                        width: 20,
                        child: const Image(
                          image: AssetImage("assets/images/g.png"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage("assets/images/ig.png"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not a member? "),
                      TextButton(
                        onPressed: () {
                          goto(context, const SignUP());
                        },
                        child: const Text('Sign up'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
