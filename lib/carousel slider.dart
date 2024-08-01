import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Carousel Slider with Indicator')),
        body: CarouselSliderWidget(),
      ),
    );
  }
}

class CarouselSliderWidget extends StatefulWidget {
  @override
  _CarouselSliderWidgetState createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int activeIndex = 0;

  final List<String> imgList = [
    "aseets/image/icon/emo3.png",
    "aseets/image/icon/emo3.png",
    "aseets/image/icon/emo3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,

            enlargeCenterPage: true,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          items: imgList.map((item) => _buildImageContainer(item)).toList(),
        ),
        SizedBox(height: 16.0,),
        buildIndicator(),
      ],
    );
  }

  Widget _buildImageContainer(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),

          color: Color(0xffECFDF3)
        ),
      child: Row(
        children: [
          Container(
            width: 140,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,

          
          
          
                    children: [
                       Text("Positive vibes",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  Text("Boost your mood with \n positive vibes",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  Row(
                    children: [
                      Icon(Icons.play_circle_fill,color: Colors.green ,),
                      Text('10 mins',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
                    ],
                  )
          
          
                            ],),
                ),
              ],
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Image(image: AssetImage('aseets/image/icon/Walking the Dog.png')),
          ),
        ],
      )
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imgList.length,
      effect: WormEffect(
        activeDotColor: Colors.blue,
        dotColor: Colors.grey,
        dotHeight: 8,
        dotWidth: 8,
      ),
    );
  }
}