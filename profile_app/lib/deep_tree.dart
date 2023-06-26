import 'package:flutter/material.dart';

class DeepTree extends StatelessWidget {
  const DeepTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: SafeArea(  //gar utasnii cameraas holduulah
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(),
                Text("Flutter is amazing"),
              ],
            ),
            Expanded(child: Container( 
              color: Colors.purple,
              )),
            Text("Is is all widget"),
            Text("Alpha academy"),
          ],
        )),
      ),
    );
  }
}