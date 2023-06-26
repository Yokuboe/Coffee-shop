import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final String text;
  final Color color;
  const CategoryBox({super.key, required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(   
          borderRadius: BorderRadius.circular(20),
           border: Border.all(
            color: Colors.black,
            width: 5.0,
            style: BorderStyle.solid
          ),
        ), 
                height: 200, 
      color: color,
      child: Center(  
        child: Text(text),
      ),
      )
    );
  }
}
