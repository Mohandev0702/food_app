import 'package:flutter/material.dart';
import 'Sign_in.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 915,
        width: 412,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0), color: Color(0xffFECD4D)),
        child: Column(
          children: [
            SizedBox(height: 30),
            Image(
              image: AssetImage('images/pizza2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Fodies',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: 'Lexend-Black'),
              ),
            ),
            Text(
              '"Cooking is like love',
              style: TextStyle(fontFamily: 'Lexend-Medium', fontSize: 15),
            ),
            Text(
              'It should be entered into with abandon or not at all.',
              style: TextStyle(fontSize: 15, fontFamily: 'Lexend-Medium'),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Opacity(
                      opacity: 0.1,
                      child: Image(
                        image: AssetImage('images/pizza2.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 130),
                    child: SizedBox(
                        height: 60,
                        width: 350,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.white),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signin()));
                            },
                            child: Text(
                              "Let's Explore",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Lexend-Medium'),
                            ))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
