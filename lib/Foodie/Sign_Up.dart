import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/First_Page.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String name = '';
  String email = '';
  String password = '';
  String confirm = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lexend-Medium'),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
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
                SizedBox(
                  height: 50,
                  width: 150,
                  child: DefaultTextStyle(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Lexend-Black'),
                    child: AnimatedTextKit(animatedTexts: [
                      RotateAnimatedText(
                        'Fodies',
                      ),
                      RotateAnimatedText(
                        'Awesome',
                      ),
                      RotateAnimatedText(
                        'Taste',
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign up to your account',
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
                  'Full Name',
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
                  name = (val);
                });
              },
              cursorColor: Colors.black.withOpacity(0.1),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  hintText: 'Your Name',
                  labelText: 'Enter Your Full Name',
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
                    Icons.email,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  hintText: 'Your Email',
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
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
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
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                Text(
                  'Confirm Password',
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
                  confirm = (val);
                });
              },
              cursorColor: Colors.black.withOpacity(0.1),
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  hintText: 'Confirm Your Password',
                  labelText: 'Confirm Password',
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
                  onPressed: name != '' &&
                          email != '' &&
                          password != '' &&
                          confirm != ''
                      ? () {}
                      : null,
                  child: Text(
                    'Sign Up',
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
        ],
      ),
    );
  }
}
