import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.blue,
    title:  const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Sky",style: TextStyle(color: Colors.white,fontSize: 24),),
        Text("News",style: TextStyle(color: Colors.orange,fontSize: 24),),
      ],
    ),
    actions:  [

      GestureDetector(
          child: const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.language,size: 32,color: Colors.white,),
          ))
    ],
  );
}