import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class ChoiceChipImageExample extends StatefulWidget {

  @override
  _ChoiceChipImageExampleState createState() => _ChoiceChipImageExampleState();
}

class _ChoiceChipImageExampleState extends State<ChoiceChipImageExample> {
  List<String> options = [
    'aseets/image/icon/emo1.png',
    'aseets/image/icon/eim2.png',
    'aseets/image/icon/emo3.png',
    'aseets/image/icon/emo4.png',
  ];
  String? selectedOption='';



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing:10,
        children: options.map((String option) {
          return ChoiceChip(shape:CircleBorder(eccentricity: 0,side: BorderSide(color: Colors.transparent)),
            label: Column(children: [
              Image.asset(
                option,
                width: 60, // تحديد عرض الصورة
                height: 100, // تحديد ارتفاع الصورة

              ),

            ],),
            selected: selectedOption == option,
            onSelected: (bool selected) {
              setState(() {
                selectedOption = selected ? option : null;
              });
            },
            selectedColor: Colors.transparent, // لون الخلفية عند التحديد
          );
        }).toList(),
      ),
    );
  }
}