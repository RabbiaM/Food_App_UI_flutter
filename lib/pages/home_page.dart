import 'package:flutter/material.dart';
import 'package:work/pages/main_page.dart';
import 'package:work/pages/favourite_page.dart';
import 'package:work/pages/menu.dart';
import 'package:work/pages/myCart_page.dart';
import 'package:work/pages/myOrders_page.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab=0;

  final List<Widget> screens=[
    MainPage(),
    FavouritePage(),
    Menu(),
    MyCartPage(),
    MyOrdersPage(),
  ];

  final PageStorageBucket bucket=PageStorageBucket();

  Widget currentScreen=MainPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          setState(() {
            currentScreen=MyCartPage();
            currentTab=2;
          });

        },
        child: Icon(Icons.shopping_cart,color: currentTab==2 ? Colors.orange:Colors.grey),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 15,),
                  MaterialButton(
                    minWidth: 40,
                      onPressed: (){
                    setState((){
                      currentScreen=MainPage();
                      currentTab=0;
                    });
                  },
                  child: Icon(Icons.home,color: currentTab==0 ? Colors.orange:Colors.grey),
                  ),
                  SizedBox(width: 15,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState((){
                        currentScreen=FavouritePage();
                        currentTab=1;
                      });
                    },
                    child: Icon(Icons.heart_broken,color: currentTab==1 ? Colors.orange:Colors.grey),
                  ),


                ],),
              //right tab
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState((){
                        currentScreen=MyOrdersPage();
                        currentTab=3;
                      });
                    },
                    child: Icon(Icons.shopping_bag,color: currentTab==3 ? Colors.orange:Colors.grey),
                  ),
                  SizedBox(width: 15,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState((){
                        currentScreen=Menu();
                        currentTab=4;
                      });
                    },
                    child: Icon(Icons.menu,color: currentTab==4 ? Colors.orange:Colors.grey),
                  ),
                  SizedBox(width: 15,),

                ],)
          ],),
        ),
      ),
    );
  }
}