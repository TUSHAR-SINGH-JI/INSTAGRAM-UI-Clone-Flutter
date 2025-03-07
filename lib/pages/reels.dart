import 'package:flutter/material.dart';
import 'package:instagram_clone/util/story_circal.dart';

class Reels extends StatelessWidget {
  Reels({super.key});

  final List<Map<String, String>> users = [
    {'name': 'joshua_l', 'message': 'Have a nice day, bro!', 'image': 'assets/dp1.jpg'},
    {'name': 'karenne', 'message': 'I heard this is a good movie, s...', 'image': 'assets/dp2.jpg'},
    {'name': 'martini_rond', 'message': 'See you on the next meeting!', 'image': 'assets/dp3.jpg'},
    {'name': 'andrewww_', 'message': 'Sounds good 😂😂😂', 'image': 'assets/dp4.jpg'},
    {'name': 'kiero_d', 'message': 'The new design looks cool, b...', 'image': 'assets/dp5.jpg'},
    {'name': 'maxjacobson', 'message': 'Thank you, bro!', 'image': 'assets/pimg6.jpg'},
    {'name': 'jamie.franco', 'message': 'Yep, I\'m going to travel in To...', 'image': 'assets/pimg1.jpg'},
    {'name': 'm_humphrey', 'message': 'Instagram UI is pretty good', 'image': 'assets/pimg3.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(), // Smooth scrolling effect
          slivers: [
            SliverAppBar(
              title: const Text('Messages'),
              floating: true,
              pinned: true,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.white54,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.grey[200] : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Profile Picture
                        StoryCircal(
                          text: null,
                          imgeUrl: users[index]['image']!,
                          width_u: 50,
                          height_u: 50,
                        ),
                        const SizedBox(width: 10),

                        // Name & Message Column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                users[index]['name']!,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                users[index]['message']!,
                                style: const TextStyle(fontSize: 14, color: Colors.black54),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: users.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
