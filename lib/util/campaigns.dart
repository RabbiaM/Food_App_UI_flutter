import 'package:flutter/material.dart';
class Campaigns extends StatelessWidget{
  final String img_path;
  final String food_name;
  final String res_name;
  final String price;
  final String rating;

  Campaigns({
    required this.food_name,
    required this.res_name,
    required this.price,
    required this.rating,
    required this.img_path,
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 4.0,top: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                      width: 200,
                      child: Image.asset(img_path,fit:BoxFit.cover)),

                  Padding(
                    padding: const EdgeInsets.only(left:6.0,top: 8.0),
                    child: Text(food_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:6.0),
                    child: Text(res_name,style: TextStyle(color: Colors.grey,fontSize: 10),),
                  ),
                  Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                      )),
                      Icon(Icons.star,color: Colors.orange[600],size: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(rating,style: TextStyle(color: Colors.orange[600],fontSize: 10),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

      ],),
    );
  }

}