import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

import 'Tap.dart';
import 'carousel slider.dart';
import 'elvetedbutton.dart';
import 'emotionViow.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName='Home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 8,right: 12),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                  Image(image:AssetImage( 'aseets/image/logo.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Moody',style: TextStyle(fontFamily: 'Kefa',fontSize:26 ))
                  ),
                ],),
                badges.Badge(
                  badgeContent: Text('0'),
                  child: Icon(Icons.notifications,size:30),
                )
              ],
            ),



        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        iconSize: 28,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),

        ],),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            Text('Hello',style: TextStyle(fontSize: 25),),
            Text(', Sara Rose',style: TextStyle(fontSize: 25,fontWeight:FontWeight.w600))
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('How are you feeling today ?',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  ChoiceChipImageExample( ),
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Feature',style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  Text('See more>',style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.green),),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CarouselSliderWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Exercise',style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  Text('See more>',style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.green),),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                  Expanded(
                    child: Container(
                    
                    
                        child: ElevatButton(label: 'Relaxation',image: 'aseets/image/icon/icon1.png',color: Color(0xffF9F5FF),)),
                  ),
                Expanded(
                  child: Container(width: 100,


                      child: ElevatButton(label: 'Meditation',image: 'aseets/image/icon/icon2.png',color: Color(0xffFDF2FA),)),
                ),
                
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: Container(


                        child: ElevatButton(label: 'Beathing',image: 'aseets/image/icon/icon3.png',color: Color(0xffFFFAF5),)),
                  ),
                  Expanded(
                    child: Container(width: 100,


                        child: ElevatButton(label: 'F0F9FF',image: 'aseets/image/icon/icon4.png',color: Color(0xffF0F9FF),)),
                  ),

                ],
              ),
            ),

          ],),

      ),
    );
  }
}
