import 'package:flutter/material.dart';
import 'package:profile_app/star_painter.dart';

class Star extends StatelessWidget {
  final double size; 
  final Color color;
  const Star({super.key,
    required this.color, // required zaaval shaardlagatai
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(   
      width: size,
      height: size,
      child: CustomPaint(  
        painter: StarPainter(Color.fromARGB(255, 227, 161, 122)),
      ),
    );
  }
}


