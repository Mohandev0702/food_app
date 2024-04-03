import 'package:flutter/material.dart';

import 'Sign_Up.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFECD4D),
                    ),
                    height: 35,
                    width: 35,
                    child: Icon(Icons.filter_list_outlined),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Fodies',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'FontMesa'),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign in to your account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FontMesa'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 60),
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(fontFamily: 'Lexend-Light'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: TextFormField(
                onChanged: (val) {
                  setState(() {
                    email = (val);
                  });
                },
                cursorColor: Colors.black.withOpacity(0.1),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    hintText: 'Email',
                    labelText: 'Enter Your Email',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    fillColor: Color(0xffF5F5F5),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.grey.withOpacity(0.1))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.grey.withOpacity(0.1))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.red.withOpacity(0.1)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(fontFamily: 'Lexend-Light'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() {
                    password = (val);
                  });
                },
                cursorColor: Colors.black.withOpacity(0.1),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    hintText: 'Password',
                    labelText: 'Enter Your Password',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    fillColor: Color(0xffF5F5F5),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.grey.withOpacity(0.1))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.grey.withOpacity(0.1))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.red.withOpacity(0.1)))),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Switch(value: false, onChanged: null),
                Text(
                  'Remember me',
                  style: TextStyle(fontFamily: 'Lexend-Light'),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: Colors.red, fontFamily: 'Lexend-Light'),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 55,
                width: 350,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFECD4D),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: email != '' && password != '' ? () {} : null,
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Lexend-Medium'),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.2,
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text('or continue with'),
                  Expanded(
                    child: Divider(
                      thickness: 1.2,
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade200),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: Image(
                        image: AssetImage('images/facebook.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade200),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: Image(
                        image: AssetImage('images/google.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade200),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: Image(
                        image: AssetImage('images/apple.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Spacer(),
                  Text("Don't have an account?"),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontFamily: 'Lexend-Light',
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
