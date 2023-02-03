import 'package:flutter/material.dart';


class BestReviewed extends StatelessWidget{

  final String img_path;
  final String food_name;
  final String res_name;
  final String ratings;
  final String price;
 // final String discounted;

  BestReviewed({
   required this.img_path,
   required this.food_name,
   required this.res_name,
   required this.price,
   //required this.discounted,
   required this.ratings,
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Padding(
                 padding: const EdgeInsets.only(left: 3.0,right: 2.0,top: 1.0,bottom: 1.0),
                 child: Center(
                   child: Container(
                     height: 70,
                     width: 70,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5),
                       image: DecorationImage(
                         image: AssetImage(img_path),
                         fit: BoxFit.cover,
                       ),

                     ),

                   ),
                 ),
               ),
            SizedBox(width: 2,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top:8,bottom: 4),
                  child: Text(food_name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                ),
                Text(res_name,style: TextStyle(fontSize: 9,color: Colors.grey),),
                Row(children: [
                  Icon(Icons.star,color: Colors.orange[600],size: 10,),
                  Icon(Icons.star,color: Colors.orange[600],size: 10,),
                  Icon(Icons.star,color: Colors.orange[600],size: 10,),
                  Icon(Icons.star,color: Colors.orange[600],size: 10,),
                  Icon(Icons.star_half,color: Colors.orange[600],size: 10,),
                  SizedBox(width: 4,),
                  Text(ratings,style: TextStyle(color: Colors.grey,fontSize: 9),),
                ],),
                 Row(
                   children: [
                     Text(price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                     SizedBox(width: 90,),
                     Icon(Icons.add,size: 18,),
                   ],
                 ),
              ],),
            ),
          ],
        ),
      ),
    );
  }

}