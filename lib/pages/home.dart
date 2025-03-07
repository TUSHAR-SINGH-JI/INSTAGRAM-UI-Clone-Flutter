import 'package:flutter/material.dart';
import 'package:instagram_clone/util/story_circal.dart';
import 'package:instagram_clone/util/user_post.dart';
class Home extends StatelessWidget {
   Home({super.key});
  final List people = ["RAM","SHAYAM","MATA","LOVE","RADHA","SHAYAM","OM"];
   final List imgeUrlList  =  [
     "assets/god.jpg",
     "assets/dp1.jpg",
     "assets/dp2.jpg",
     "assets/dp3.jpg",
     "assets/radhaKrishana.jpg",
     "assets/dp4.jpg",
     "assets/dp5.jpg",
   ];
  final List img_user_post = [
    "assets/pimg.jpg",
    "assets/pimg1.jpg",
    "assets/dp4.jpg",
    "assets/pimg3.jpg",
    "assets/pimg4.jpg",
    "assets/pimg5.jpg",
    "assets/pimg6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
          "Instagram",
              style: TextStyle(color: Colors.black),
        ),
          Row(
            children: [
              Icon(Icons.add),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],
          )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 99,
              // color: Colors.redAccent,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context,index){
                return StoryCircal(
                  text: people[index],
                  imgeUrl: imgeUrlList[index],
                  height_u: 60,
                  width_u: 60,
                );
              }),
            ),
        
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                  itemBuilder: (context,index){
                    return UserPost(name:people[index],imgeUrl: imgeUrlList[index],imgof_post: img_user_post[index],);
                  }),
            )
        
          ],
        ),
      ),
    );
  }
}
