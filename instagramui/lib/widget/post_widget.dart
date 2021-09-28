import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage('assets/images/BDpro.png'))),
                ),
                title: Text('BD pro'),
                subtitle: Text('Dhaka,Malibug'),
                trailing: Icon(Icons.more_vert),
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/nature.jpg'))),
              ),
              ListTile(
                leading: Wrap(
                  spacing: 10,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 35,
                    ),
                    SvgPicture.asset(
                      'assets/images/comment.svg',
                      width: 30,
                    ),
                    SvgPicture.asset(
                      'assets/images/sende.svg',
                      width: 28,
                    )
                  ],
                ),
                trailing: Icon(
                  Icons.bookmark_border_outlined,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      '1000 Likes',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'BD pro Please subscribe you Youtube Channel',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'View all 1200 comments',
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          );
        });
  }
}
