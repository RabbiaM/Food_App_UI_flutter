
import 'package:flutter/material.dart';

class AllRestaurants extends StatelessWidget{
  final String img_path;
  final String res_name;
  final String ratings;
  final String address;

  AllRestaurants({
    required this.img_path,
    required this.res_name,
    required this.address,
    required this.ratings,
  });

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(img_path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(res_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    Text(address,style: TextStyle(color: Colors.grey,fontSize:11),),
                    Row(children: [
                      Icon(Icons.star,color: Colors.orange[600],size: 10,),
                      Icon(Icons.star,color: Colors.orange[600],size: 10,),
                      Icon(Icons.star,color: Colors.orange[600],size: 10,),
                      Icon(Icons.star,color: Colors.orange[600],size: 10,),
                      Icon(Icons.star,color: Colors.orange[600],size: 10,),
                      SizedBox(width: 4,),
                      Text(ratings,style: TextStyle(color: Colors.grey,fontSize: 9),),
                      SizedBox(width: 6,),

                    ],),


                  ],
                ),
              ),



                Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage('assets/images/heart.png'),
                        fit: BoxFit.cover,
                      ),),
                  ),
                ),


            ],
          ),
        ),
       Padding(
         padding: const EdgeInsets.only(left: 100.0,right: 12.0),
         child: Divider(height: 5,color: Colors.grey,),
       ),
     ],
   );

    }

}