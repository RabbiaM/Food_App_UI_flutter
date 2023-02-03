import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class RestaurantCard extends StatefulWidget{
  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  final List<String> food_banners = [
    'assets/images/food_b1.jpg',
    'assets/images/food_b4.png',
    'assets/images/food_b5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }
              ),

              items: food_banners
                  .map((item) => Container(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 200,
                              child: Image.asset(item, fit: BoxFit.cover, width: 1000.0)),

                        ],
                      )),
                ),
              ))
                  .toList(),
            )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: food_banners.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.orange)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]);
     // ],
   // );


  }
}