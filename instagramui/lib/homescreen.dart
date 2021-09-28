import 'package:flutter/material.dart';
import 'package:instagramui/widget/bottombar_widget.dart';
import 'package:instagramui/widget/post_widget.dart';
import 'package:instagramui/widget/story.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Instagram',
          style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: 'Billabong',
              fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send))
        ],
      ),
      body: Column(
        children: [
          StoryWidget(),
          Divider(
            color: Colors.grey,
          ),
          Expanded(child: PostWidget())
        ],
      ),
      bottomNavigationBar: BottombarWidget(),
    );
  }
}
