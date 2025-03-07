import 'package:flutter/material.dart';
import 'package:instagram_clone/util/acount_tab1.dart';
import 'package:instagram_clone/util/acount_tab2.dart';
// import 'package:instagram_clone/util/acount_tab2.dart';
import 'package:instagram_clone/util/acount_tab3.dart';
import 'package:instagram_clone/util/acount_tab4.dart';
import 'package:instagram_clone/util/story_circal.dart';
class Account extends StatelessWidget {
   Account({super.key});
  final List people = ["RAM","SHAYAM","RADHA","LOVE","RADHA","SHAYAM","OM"];
  final List imgeUrlList  =  [
    "assets/god.jpg",
    "assets/dp1.jpg",
    "assets/dp2.jpg",
    "assets/dp3.jpg",
    "assets/radhaKrishana.jpg",
    "assets/dp4.jpg",
    "assets/dp5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
               children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 StoryCircal(text: null,
                     imgeUrl: "assets/radhaKrishana.jpg",
                     width_u: 100,
                     height_u: 100)
                 ,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Column(
                        children: [
                          Text("999",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                          ),
                          Text("Posts")
                        ],
                      ),
                      Column(
                        children: [
                          Text("9999",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                          ),
                          Text("Followers")
                        ],
                      ),
                      Column(
                        children: [
                          Text("999",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                          ),
                          Text("following")
                        ],
                      )
                    ],
                  ),
                )

               ],
             ),
           ),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       Text("RADHA RADHA",style: TextStyle(fontWeight: FontWeight.bold),)
                       , Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5.0),
                         child: Text("jai  jai RADHASHAYAM "),
                       )
                       , Text("tusharsingh.com",style: TextStyle(color: Colors.blue),)

                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 9.0),
                   child: Row(
                     children: [

                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Container(
                           padding: EdgeInsets.all(8),
                           child: Center(child: Text("Edit profile")),
                           decoration: BoxDecoration(
                             border:Border.all(color: Colors.grey),
                             borderRadius: BorderRadius.circular(5)
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Container(
                           padding: EdgeInsets.all(8),
                           child: Center(child: Text("Ad Tools")),
                           decoration: BoxDecoration(
                             border:Border.all(color: Colors.grey),
                             borderRadius: BorderRadius.circular(5)
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Container(
                           padding: EdgeInsets.all(8),
                           child: Center(child: Text("Insights")),
                           decoration: BoxDecoration(
                             border:Border.all(color: Colors.grey),
                             borderRadius: BorderRadius.circular(5)
                           ),
                         ),
                       ),
                     ),


                     ],
                   ),
                 ),

                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:1.0,vertical:1 ),
                     child: Column(
                       children: [
                         Container(
                           // color: Colors.red,
                           height: 110,
                           child: ListView.builder(
                               scrollDirection: Axis.horizontal,
                               itemCount: people.length,
                               itemBuilder: (context,index){
                                 return StoryCircal(
                                   text: people[index] ,
                                   imgeUrl:imgeUrlList[index],
                                 height_u: 60,
                                   width_u: 60,
                                 );
                               }),
                         ),
                            TabBar(
                               dividerColor: Colors.black,
                                labelColor: Colors.blue,
                               tabs: [
                                 Tab(
                                   icon: Icon(Icons.grid_3x3_rounded),
                                 ),

                                 Tab(
                                   icon: Icon(Icons.video_call),
                                 ),

                                 Tab(
                                   icon: Icon(Icons.shop),
                                 ),

                                 Tab(
                                   icon: Icon(Icons.person),
                                 )
                               ]
                           ),

                         Expanded(
                             // flex:1,
                             child: TabBarView(children: [

                               AcountTab1(),
                               AcountTab2(),
                               AcountTab3(),
                               AcountTab4(),
                             ]))
                       ],
                     ),
                   ),
                 )
                 ,

               ],
          ),
        )
      ),
    );
  }
}
