import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatButton extends StatelessWidget {
  String label='';
  String image='';
  Color color;

  ElevatButton({super.key,required this.label,required this.image,required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:color ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),  onPressed: (){}, child: Row(children: [
        Container(
            width: 40,
            height: 70,
            child: Image(image:  AssetImage('$image'))),
        Text("$label" ,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600),
        )],)),
    );
  }
}
