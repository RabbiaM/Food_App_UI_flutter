import 'package:flutter/material.dart';
import 'package:work/util/restaurant_card.dart';
import 'package:work/util/food_item.dart';
import 'package:work/util/popular_res.dart';
import 'package:work/util/campaigns.dart';
import 'package:work/util/best_reviewed.dart';
import 'package:work/util/all_restaurants.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List food_items = [
    ['assets/images/burger_2.png', 'Burger', Colors.lightGreen],
    ['assets/images/biryani.png', 'Biryani', Colors.orange],
    ['assets/images/chinese.png', 'Chinese', Colors.yellow],
    ['assets/images/cake.png', 'Cake', Colors.pink],
    ['assets/images/coffee.png', 'Coffee', Colors.amber[200]],
    ['assets/images/kabab.png', 'Kabab', Colors.tealAccent],
    ['assets/images/pasta.png', 'Pasta', Colors.pink[100]],
    ['assets/images/sushi.png', 'Asian', Colors.orange[100]],
  ];

  final List popular_res = [
    ['assets/images/res_1.jpg', 'Hunger Puppets'],
    ['assets/images/res_2.jpg', 'Cafe Mocca'],
    ['assets/images/res_3.jpg', 'Food Corner'],
  ];

  final List campaigns = [
    [
      'assets/images/crab.jpg',
      'Spicy Crab Early Food',
      'Hungry Puppets',
      '\$ 400.0',
      '0.0'
    ],
    [
      'assets/images/cheese_burger.jpg',
      'Cheese Burger',
      'Hungry Puppets',
      '\$ 150.00',
      '0.0'
    ],
    [
      'assets/images/c_coffee.jpg',
      'Cappuccino Coffee',
      'Hungry Puppets',
      '\$ 50.00',
      '0.0'
    ],
    [
      'assets/images/b_burger.jpg',
      'Beef Cheese Burger',
      'Cheese Burger',
      '\$ 600.00',
      '0.0'
    ],
    [
      'assets/images/cheese_cake.jpg',
      'Cheese cake',
      'Mini Kebab',
      '\$ 200.00',
      '0.0'
    ],
    [
      'assets/images/pizza_c.jpg',
      'Pizza carnival',
      'Cheesy Restaurant',
      '\$ 600.00',
      '0.0'
    ]
  ];

  final List best_reviewed = [
    ['(3)'],
    ['(2)'],
    ['(2)'],
    ['(1)'],
    ['(1)'],
    ['(1)']
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 80.0, right: 15.0),

                //SEARCHBAR
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Search your desired foods or restaurants",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.orange[600],
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),

              //CAROUSEL SLIDER
              RestaurantCard(),

              SizedBox(
                height: 30,
              ),

              //CATEGORIES
              Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.orange[600],
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: food_items.length,
                    itemBuilder: (context, index) {
                      if (index < 0 || index >= food_items.length)
                        return null;
                      else
                        return FoodItem(
                            imgpath: food_items[index][0],
                            name: food_items[index][1],
                            color: food_items[index][2]);
                    }),
              ),

              SizedBox(
                height: 16,
              ),


              //FIND NEARBY RESTAURANTS
              Container(
                height: 100,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/images/nearby.png"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find nearby',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Restaurant near you"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('See Location'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[600],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),


              //CAMPAIGNS
              Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Campaigns",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.orange[600],
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: campaigns.length,
                  itemBuilder: (context, index) {
                    return Campaigns(
                      img_path: campaigns[index][0],
                      food_name: campaigns[index][1],
                      res_name: campaigns[index][2],
                      price: campaigns[index][3],
                      rating: campaigns[index][4],
                    );
                  },
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //NEW ON STACKFOOD
              Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "New on StackFood",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.orange[600],
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popular_res.length,
                  itemBuilder: (context, index) {
                    return PopularRes(
                      img_path: popular_res[index][0],
                      res_name: popular_res[index][1],
                      ratings: best_reviewed[index][0],
                    );
                  },
                ),
              ),

              SizedBox(
                height: 16,
              ),

              //BEST REVIEWED RESTAURANTS
              Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Best Reviewed food",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.orange[600],
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: best_reviewed.length,
                  itemBuilder: (context, index) {
                    return BestReviewed(
                      img_path: campaigns[index][0],
                      food_name: campaigns[index][1],
                      res_name: campaigns[index][2],
                      price: campaigns[index][3],
                      ratings: best_reviewed[index][0],
                    );
                  },
                ),
              ),

              SizedBox(
                height: 8,
              ),

              //ALL RESTAURANTS
              Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "All Restaurants",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              AllRestaurants(
                img_path: 'assets/images/res_1.jpg',
                res_name: 'Vintage Kitchen',
                address: 'House:00, Road:00, Street:00, Test City',
                ratings: '(1)',
              ),
              AllRestaurants(
                img_path: 'assets/images/res_2.jpg',
                res_name: 'Tasty Lunch',
                address: 'House:00, Road:00, Street:00, Test City',
                ratings: '(2)',
              ),
              AllRestaurants(
                img_path: 'assets/images/res_3.jpg',
                res_name: 'Cheese Burger',
                address: 'House:00, Road:00, Test City',
                ratings: '(1)',
              ),
              AllRestaurants(
                img_path: 'assets/images/res_4.jpg',
                res_name: 'Italian Fast Food',
                address: 'House:00, Road:00, Street:00, Test City',
                ratings: '(1)',
              ),
              AllRestaurants(
                img_path: 'assets/images/res_5.jpg',
                res_name: 'Hungry Puppets',
                address: 'House:00, Road:00, Test City',
                ratings: '(1)',
              ),
              AllRestaurants(
                img_path: 'assets/images/res_6.jpg',
                res_name: 'Cafe Monarch',
                address: 'Ghatkopar-Mankhurd Link Road',
                ratings: '(1)',
              ),
              AllRestaurants(
                img_path: 'assets/images/res_7.jpg',
                res_name: 'Redcliff Cafe',
                address: 'House:00, Road:00, Street:00, Test City',
                ratings: '(1)',
              ),
              AllRestaurants(
                img_path: 'assets/images/res_8.jpg',
                res_name: 'The Capital Grill',
                address: 'House:00, Road:00, Street:00, Test City',
                ratings: '(2)',
              ),
              AllRestaurants(
                img_path: 'assets/images/res_9.jpg',
                res_name: 'Mini kebab',
                address: 'House:00, Road:00, Test City',
                ratings: '(2)',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
