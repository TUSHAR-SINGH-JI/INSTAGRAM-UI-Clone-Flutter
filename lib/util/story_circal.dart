import 'package:flutter/material.dart';
class StoryCircal extends StatelessWidget {
  final String? text;
  final double? width_u;
  final double? height_u;
  final String imgeUrl;
  const StoryCircal({super.key,
    required this.text,
    required this.imgeUrl,
    required this.width_u,
    required this.height_u});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
         Container(
           width: width_u,
           height: height_u ,
           decoration: BoxDecoration(
             shape: BoxShape.circle,
             gradient: LinearGradient(colors:[
               Color(0xFFF6017A), // Pink
               Color(0xFFD62976), // Dark Pink
               Color(0xFF962FBF), // Purple
               Color(0xFF4F5BD5), // Blue
             ],
               begin: Alignment.topLeft,
                end: Alignment.bottomRight

             )
           ),
           child: Padding(
             padding: const EdgeInsets.all(3.0),
             child: Container(
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.white
               ),
               child: Padding(
                 padding: const EdgeInsets.all(2.0),
                 child: Container(
                   child: ClipOval(
                     child:Image.asset(
                       imgeUrl,
                       width: 50,
                       height: 50,
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),

             ),
           ),
         ),
          const SizedBox(height: 5,),
        Text(text??'',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
