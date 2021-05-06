import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  Material MyItems(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
        elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(heading,
                  style:TextStyle(
                    fontSize: 20.0,
                    color: Color(color),
                  ) ,
                  ),
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  )
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: StaggeredGridView.count(
          crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        children: [
          MyItems(Icons.graphic_eq, 'Total Views',0xffed622b),
          MyItems(Icons.bookmark, 'Bookmark',0xff26cb3c),
          MyItems(Icons.favorite, 'Favourite',0xff7297ff),
          MyItems(Icons.notifications, 'Notification',0xffff3266),
          MyItems(Icons.attach_money, 'Balance',0xff3399fe),
          MyItems(Icons.settings, 'Settings',0xfff4c83f),
          MyItems(Icons.group_work, 'Group Work',0xff622F74),
          MyItems(Icons.message, 'Messages',0xff7297ff),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 140.0),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 320),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(2, 240),
          StaggeredTile.extent(2, 150.0),
        ],


      ),
    );
  }
}
