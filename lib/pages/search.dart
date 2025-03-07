import 'package:flutter/material.dart';
import 'package:instagram_clone/util/ExplorGride.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.all(9),
              color: Colors.grey[400],
              child: Row(
                children: [
                  Icon(Icons.search,color: Colors.grey[600],),
                  Container(
                    color: Colors.grey[400],
                    child: Text("Search",style: TextStyle(color: Colors.grey[600]),),
                  )
                ],
              ),
            ),
          ),
        ),
          body: ExplorGride()
      ),
    );
  }
}
