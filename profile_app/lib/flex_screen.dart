import 'package:flutter/material.dart';
import 'package:profile_app/star.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('Flexible Screen'),
      ),
      body: Column(
        children: [ 
          SizedBox(height: 100,
          child: Row(  
           children: [
            Container( 
              width: 100,
              height: double.infinity,
              color: Colors.brown,
              child: Center(child: Text("100")),
            ),
            Expanded(child: Container( 
              width: 100,
              height: double.infinity,
              color: Color.fromARGB(255, 245, 155, 155),
            ),
            ),
            Container( 
              width: 40,
              height: double.infinity,
              color: Color.fromARGB(255, 255, 196, 155),
              child: Center(child: Text("40")),
            ),
           ],
          )
          ),
          SizedBox(  
            height: 100,
            child: Row(children: [
              Flexible(
                flex: 1,
                child: Container(
                height: double.infinity,
                color: Color.fromARGB(255, 148, 93, 64),
              )),
                 Flexible(
                flex: 1,
                child: Container(
                height: double.infinity,
                color: Color.fromARGB(255, 138, 121, 112),
              )),
                Flexible(
                flex: 2,
                child: Container(
                height: double.infinity,
                color: Color.fromARGB(255, 52, 38, 30),
                ))
            ]),
          ),
          Star(color: Colors.blue, size: 100)
        ],
      ),
    );
  }
}