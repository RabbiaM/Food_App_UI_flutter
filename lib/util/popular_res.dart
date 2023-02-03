import 'package:flutter/material.dart';

class PopularRes extends StatelessWidget{
  final String img_path;
  final String res_name;
  final String ratings;
  PopularRes({
    required this.img_path,
    required this.res_name,
    required this.ratings,
});
  @override
  Widget build(BuildContext context) {
   return Container(
     child: Column(children: [
       Padding(
         padding: const EdgeInsets.only(top: 8.0,left:8.0,right:4.0),
         child: ClipRRect(
           borderRadius: BorderRadius.circular(8),
           child: Container(
             width: 230,
             decoration: BoxDecoration(
                 color: Colors.white,
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Stack(
                   alignment: Alignment.topRight,
                   children: [
                   Container(
                     height: 100,
                     width: 300,
                     child: Image.asset(img_path,fit: BoxFit.cover,)),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       width: 35,
                       height: 35,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(9),
                         color: Colors.white,),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Image.asset('assets/images/heart.png',fit: BoxFit.contain,color: Colors.grey,),
                       ),
                     ),
                   ),
                 ],

                 ),


                 Padding(
                   padding: const EdgeInsets.only(left:6.0,top: 8.0),
                   child: Text(res_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 6.0),
                   child: Text('House:00, Road:00, Street:00, Test City',style: TextStyle(color: Colors.grey,fontSize:11),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 6.0,bottom: 6.0),
                   child: Row(children: [
                     Icon(Icons.star,color: Colors.grey,size: 10,),
                     Icon(Icons.star,color: Colors.grey,size: 10,),
                     Icon(Icons.star,color: Colors.grey,size: 10,),
                     Icon(Icons.star,color: Colors.grey,size: 10,),
                     Icon(Icons.star,color: Colors.grey,size: 10,),
                     SizedBox(width: 4,),
                     Text(ratings,style: TextStyle(color: Colors.grey,fontSize: 9),),
                   ],),
                 )
               ],
             ),
           ),
         ),
       ),

     ],),
   );
  }
  
}