import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow.shade600),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.bell,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Delicious',
                          style: TextStyle(fontSize: 19),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Food Menu',
                          style: TextStyle(
                              fontSize: 30, fontFamily: 'Lexend-Black'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                child: TextFormField(
                  style: TextStyle(fontSize: 20),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      fillColor: Colors.white54,
                      filled: true,
                      prefixIcon: Icon(
                        size: 30,
                        Icons.search_sharp,
                        color: Colors.black,
                      ),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 290),
                child: Text(
                  'Category',
                  style: TextStyle(fontSize: 17, fontFamily: 'Lexend-Black'),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        width: 140,
                        child: Card(
                          child: Column(
                            children: [
                              Image(
                                height: 130,
                                width: 130,
                                image: AssetImage('images/pizza2.png'),
                              ),
                              Text(
                                'Pizza',
                                style: TextStyle(
                                    fontFamily: 'Lexend-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          elevation: 10,
                          color: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        width: 140,
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 130,
                                  width: 130,
                                  image: AssetImage('images/burger.jpg'),
                                ),
                              ),
                              Text(
                                'Burger',
                                style: TextStyle(
                                    fontFamily: 'Lexend-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          elevation: 10,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        width: 140,
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 130,
                                  width: 130,
                                  image: AssetImage('images/fried.jpg'),
                                ),
                              ),
                              Text(
                                'Chicken',
                                style: TextStyle(
                                    fontFamily: 'Lexend-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          elevation: 10,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        width: 140,
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 130,
                                  width: 130,
                                  image: AssetImage('images/frenchfries.jpg'),
                                ),
                              ),
                              Text(
                                'French Fries',
                                style: TextStyle(
                                    fontFamily: 'Lexend-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          elevation: 10,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        width: 140,
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 130,
                                  width: 130,
                                  image: AssetImage('images/baguette.jpg'),
                                ),
                              ),
                              Text(
                                'Baguette',
                                style: TextStyle(
                                    fontFamily: 'Lexend-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          elevation: 10,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 170,
                        width: 140,
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  height: 130,
                                  width: 130,
                                  image: AssetImage('images/sandwich.jpg'),
                                ),
                              ),
                              Text(
                                'Sandwich',
                                style: TextStyle(
                                    fontFamily: 'Lexend-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          elevation: 10,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 290),
                child: Text(
                  'Popular',
                  style: TextStyle(fontSize: 17, fontFamily: 'Lexend-Black'),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: SizedBox(
                      height: 260,
                      width: 170,
                      child: Card(
                        elevation: 10,
                        color: CupertinoColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Container(
                                color: Colors.white,
                                child: Image(
                                  height: 160,
                                  width: 270,
                                  image: AssetImage('images/pizza2.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Hottin Pizza',
                              style: TextStyle(
                                  fontFamily: 'Lexend-Medium', fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '50 min',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.star),
                                Text(
                                  '4.0',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                        color: Colors.yellow),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: SizedBox(
                      height: 260,
                      width: 170,
                      child: Card(
                        elevation: 10,
                        color: CupertinoColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Container(
                                color: Colors.white,
                                child: Image(
                                  height: 160,
                                  width: 270,
                                  image: AssetImage('images/pizza3.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Hottin Pizza',
                              style: TextStyle(
                                  fontFamily: 'Lexend-Medium', fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '50 min',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.star),
                                Text(
                                  '4.0',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                        color: Colors.yellow),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: SizedBox(
                      height: 260,
                      width: 170,
                      child: Card(
                        elevation: 10,
                        color: CupertinoColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Container(
                                color: Colors.white,
                                child: Image(
                                  height: 160,
                                  width: 270,
                                  image: AssetImage('images/pizza4.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Hottin Pizza',
                              style: TextStyle(
                                  fontFamily: 'Lexend-Medium', fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '50 min',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.star),
                                Text(
                                  '4.0',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                        color: Colors.yellow),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: SizedBox(
                      height: 260,
                      width: 170,
                      child: Card(
                        elevation: 10,
                        color: CupertinoColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Container(
                                color: Colors.white,
                                child: Image(
                                  height: 160,
                                  width: 270,
                                  image: AssetImage('images/pizza3.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Hottin Pizza',
                              style: TextStyle(
                                  fontFamily: 'Lexend-Medium', fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '50 min',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.star),
                                Text(
                                  '4.0',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                        color: Colors.yellow),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: SizedBox(
                      height: 260,
                      width: 170,
                      child: Card(
                        elevation: 10,
                        color: CupertinoColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Container(
                                color: Colors.white,
                                child: Image(
                                  height: 160,
                                  width: 270,
                                  image: AssetImage('images/pizza2.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Hottin Pizza',
                              style: TextStyle(
                                  fontFamily: 'Lexend-Medium', fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '50 min',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.star),
                                Text(
                                  '4.0',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                        color: Colors.yellow),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: SizedBox(
                      height: 260,
                      width: 170,
                      child: Card(
                        elevation: 10,
                        color: CupertinoColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Container(
                                color: Colors.white,
                                child: Image(
                                  height: 160,
                                  width: 270,
                                  image: AssetImage('images/pizza3.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Hottin Pizza',
                              style: TextStyle(
                                  fontFamily: 'Lexend-Medium', fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '50 min',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.star),
                                Text(
                                  '4.0',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                        color: Colors.yellow),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
