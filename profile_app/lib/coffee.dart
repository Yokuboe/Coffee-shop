import 'package:flutter/material.dart';
 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'figma_ui_to_flutter_code',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
   State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 

  @override 
  Widget build(BuildContext context) { 
    return Container(
    width: 393,
    height: 852,
    color: Color(0xffffcaa4),
    child: Stack(
        children:[
            Positioned.fill(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 413,
                        height: 348,
                        padding: const EdgeInsets.only(left: 22, right: 123, top: 25, bottom: 246, ),
                        child: Stack(
                            children: [
                                Positioned.fill(
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            SizedBox(
                                                width: 268,
                                                height: 77,
                                                child: Text(
                                                    "\n",
                                                    style: TextStyle(
                                                        color: Color(0xff83550f),
                                                        fontSize: 37,
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                Positioned.fill(
                                    child: FlutterLogo(size: 348),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        width: 393,
                        height: 557,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffffcaa4),
                        ),
                        child: Stack(
                            children:[
                                Positioned(
                                    left: 50,
                                    top: 104,
                                    child: Container(
                                        width: 292,
                                        height: 240,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(40),
                                            color: Colors.white,
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 93,
                                    top: 387,
                                    child: Container(
                                        width: 198,
                                        height: 29,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Color(0xff83550f),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 77,
                                    top: 214,
                                    child: Container(
                                        width: 238,
                                        height: 1,
                                    ),
                                ),
                                Positioned(
                                    left: 77,
                                    top: 267,
                                    child: Container(
                                        width: 238,
                                        height: 1,
                                    ),
                                ),
                                Positioned(
                                    left: 102,
                                    top: 122,
                                    child: Container(
                                        width: 188,
                                        height: 22,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(40),
                                            color: Color(0xff83550f),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 107,
                                    top: 125,
                                    child: SizedBox(
                                        width: 163,
                                        height: 16,
                                        child: Text(
                                            "Login Google Account",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 73,
                                    top: 184,
                                    child: SizedBox(
                                        width: 140,
                                        height: 16,
                                        child: Text(
                                            " Email:",
                                            style: TextStyle(
                                                color: Colors.black,
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 77,
                                    top: 237,
                                    child: SizedBox(
                                        width: 109,
                                        height: 16,
                                        child: Text(
                                            "Password;",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 93,
                                    top: 287,
                                    child: Container(
                                        width: 185,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(40),
                                            color: Color(0xffffd19c),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 121,
                                    top: 287,
                                    child: SizedBox(
                                        width: 129,
                                        height: 17,
                                        child: Text(
                                            "      Done",
                                            style: TextStyle(
                                                color: Colors.black,
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 55,
                                    top: 353,
                                    child: SizedBox(
                                        width: 280,
                                        height: 22,
                                        child: Text(
                                            "         Forgot password?",
                                            style: TextStyle(
                                                color: Color(0xff83550f),
                                                fontSize: 17,
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 143,
                                    top: 387,
                                    child: SizedBox(
                                        width: 168,
                                        height: 19,
                                        child: Text(
                                            "New Account",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 35,
                                    top: 438,
                                    child: SizedBox(
                                        width: 307,
                                        height: 60,
                                        child: Text(
                                            "   Coffee shop",
                                            style: TextStyle(
                                                color: Color(0xff83550f),
                                                fontSize: 39,
                                            ),
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 132,
                top: 328,
                child: SizedBox(
                    width: 291,
                    height: 53,
                    child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color(0xff83550f),
                            fontSize: 40,
                        ),
                    ),
                ),
            ),
        ],
    ),
);
  }
}

