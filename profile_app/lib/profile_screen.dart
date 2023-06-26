import 'dart:io';

import 'package:flutter/material.dart';
import 'package:profile_app/star.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      _buildProfileImage(context),
      _buildProfileDetails(context),
      _buildActions(context),
    ],),);
  }

  Widget _buildProfileImage(BuildContext context){
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: ClipOval(
          child: Image.asset('assets/Whale.jpg',
          fit:BoxFit.fitHeight,),
        ),
      ),
    );
  }
  
Widget _buildProfileDetails(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children:[
       Text("Enkhbileg Enkhbayar",
       style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w600
       ),
       ),
       Row(
         children: [
           Star(color:Color.fromARGB(143, 255, 0, 0), size: 40 ),
            Star(color:Color.fromARGB(143, 122, 169, 212), size: 40 ),
             Star(color:Color.fromARGB(143, 60, 85, 248), size: 40 ),
              Star(color:Color.fromARGB(143, 144, 95, 205), size: 40 ),
         ],
       ),
              _buildDetailsRow('AGE','13'),
              _buildDetailsRow('Status', 'Good')
       ],
      ),
    ); 
  } 
  Widget _buildDetailsRow(String heading,String value){
    return Row(
      children: [
        Text(' $heading: ',style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        Text(' $value',style: TextStyle(color: Colors.purple),),
      ],
     );
  } 
  Widget _buildActions(BuildContext context){
    return Row( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Icon(Icons.restaurant),
              Text('Feed'),
            ],
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(10.0),
           child: Column(
            children: [
              Icon(Icons.favorite),
              Text('Pet'),
            ],
                 ),
         ),
         Padding(
          padding: const EdgeInsets.all(10.0),
           child: Column(
            children: [
              Icon(Icons.directions_walk),
              Text('Walk'),
            ],
                 ),
         ),
      ],
    );
  }
}