import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    var edgeInsets = const EdgeInsets.symmetric(horizontal: 20, vertical: 180);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Tic Tac Toe",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: edgeInsets,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "O",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "X",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "O",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "O",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "X",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "O",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "O",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "X",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: const Text(
                    "O",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
