import 'package:flutter/material.dart';
// import 'package:instagram_clone/util/story_circal.dart';
class UserPost extends StatefulWidget {
  final String name ;
  final String imgeUrl ;
  final String imgof_post ;
  const UserPost({
    super.key,
    required this.name,
    required this.imgeUrl,
    required this.imgof_post});

  @override
  State<UserPost> createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
    bool  lala_dill =false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
          Container(
          width: 60,
            height: 60,
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
                        widget.imgeUrl,
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
                  SizedBox(width: 10,),
                  Text(widget.name,style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
                image:AssetImage(widget.imgof_post),
            fit: BoxFit.cover
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    lala_dill = lala_dill ? false:true ;
                  });

                }, icon: Icon(Icons.favorite,color: lala_dill ?Colors.redAccent:Colors.black ,))
                ,Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.chat_bubble_outline_rounded),
                ),
                Icon(Icons.share)
              ],
          ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13.0,top: 0),
          child: Row(
          children: [
            Text("Liked by"),
            Text("MAHAKAL ji",style: TextStyle(
              fontWeight: FontWeight.bold,),
            ),
            Text("and",),
            Text("Others",
              style:TextStyle(
            fontWeight: FontWeight.bold
            ),
            )
          ],
          ),
        ),
        // caption
        Padding(
          padding: const EdgeInsets.only(
            left:18.0,
            top: 0.0
          ),
          child: RichText(
          text: TextSpan(
          style: TextStyle(color: Colors.black),
          children:[
          TextSpan(text: "RAM JI",
          style:
          TextStyle(fontWeight: FontWeight.bold)
          ),
          TextSpan(text: "✨Ram Ram Satya ha  mast hai ✨(location samshan)")
          ]),
            ),
        ),
        // comments
      // SizedBox(height: 10/0,)
      ],
    );
  }
}
