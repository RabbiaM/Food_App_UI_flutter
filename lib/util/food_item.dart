import 'package:flutter/material.dart';
class FoodItem extends StatelessWidget{
  final String imgpath;
  final String name;
   Color color;

   FoodItem({
    required this.imgpath,
    required this.name,
    required this.color,

});

  @override
  Widget build(BuildContext context) {
    return
        Column(
          children: [
            Container(
              width: 55,
              height: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Container(
                height: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Image.asset(imgpath,fit: BoxFit.contain,),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
             Padding(
               padding: EdgeInsets.only(left:15.0),
               child: Container(
                  height: 15,
                    width: 60,
                    child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
             ),
          ],

    );


  }
}