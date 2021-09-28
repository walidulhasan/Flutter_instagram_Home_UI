import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final List<dynamic> story = [
    //for multy copy past ctrl+Shift+alt+Arrow Down key then past Ctrl+v
    {"images": 'assets/images/BDpro.png', "username": "BD pro"},
    {"images": 'assets/images/post0.jpg', "username": "Kamal hossen"},
    {"images": 'assets/images/post1.jpg', "username": "Jon Roy"},
    {"images": 'assets/images/user0.png', "username": "Sin pan"},
    {"images": 'assets/images/user1.png', "username": "Loos kan"},
    {"images": 'assets/images/user2.png', "username": "Rinta"},
    {"images": 'assets/images/user3.png', "username": "Rik pa"},
    {"images": 'assets/images/user4.png', "username": "Jonna ha"}
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(story.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Container(
                        width: 69,
                        height: 69,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF9B2282),
                                  Color(0xFFEEA863)
                                ])),
                        child: Container(
                          width: 65,
                          height: 65,
                          padding: EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, spreadRadius: 1)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              width: 65,
                              height: 67,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('${story[index]["images"]}'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('${story[index]["username"]}'),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
