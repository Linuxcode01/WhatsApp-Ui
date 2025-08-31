import 'package:flutter/material.dart';
import 'package:wathsapp_clone/Screens/Widgets/UiHelper.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var arrContent = [
    {
      "images":"https://i.pinimg.com/474x/95/9e/95/959e95a7d6315020ec9bc64dd07c4f98.jpg",
      "name":"chandan",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images": "https://i.pinimg.com/474x/7c/00/f0/7c00f0c08cf92fa637a7c9e5449b04bc.jpg",
      "name": "kundan",
      "lastmsg": "cpp",
      "time": "01:45 am",
      "msg": "5",
    },
    {
      "images": "https://i.pinimg.com/474x/d5/f1/36/d5f1360ca4123751dfd5297f83c3822d.jpg",
      "name": "rahul",
      "lastmsg": "Java",
      "time": "02:45 am",
      "msg": "2",
    },
    {
      "images":"https://i.pinimg.com/474x/95/9e/95/959e95a7d6315020ec9bc64dd07c4f98.jpg",
      "name":"chandan",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images": "https://i.pinimg.com/474x/7c/00/f0/7c00f0c08cf92fa637a7c9e5449b04bc.jpg",
      "name": "kundan",
      "lastmsg": "cpp",
      "time": "01:45 am",
      "msg": "5",
    },
    {
      "images": "https://i.pinimg.com/474x/d5/f1/36/d5f1360ca4123751dfd5297f83c3822d.jpg",
      "name": "rahul",
      "lastmsg": "Java",
      "time": "02:45 am",
      "msg": "2",
    },
    {
      "images":"https://i.pinimg.com/474x/95/9e/95/959e95a7d6315020ec9bc64dd07c4f98.jpg",
      "name":"chandan",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images": "https://i.pinimg.com/474x/7c/00/f0/7c00f0c08cf92fa637a7c9e5449b04bc.jpg",
      "name": "kundan",
      "lastmsg": "cpp",
      "time": "01:45 am",
      "msg": "5",
    },
    {
      "images": "https://i.pinimg.com/474x/d5/f1/36/d5f1360ca4123751dfd5297f83c3822d.jpg",
      "name": "rahul",
      "lastmsg": "Java",
      "time": "02:45 am",
      "msg": "2",
    },
    {
      "images":"https://i.pinimg.com/474x/95/9e/95/959e95a7d6315020ec9bc64dd07c4f98.jpg",
      "name":"chandan",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images": "https://i.pinimg.com/474x/7c/00/f0/7c00f0c08cf92fa637a7c9e5449b04bc.jpg",
      "name": "kundan",
      "lastmsg": "cpp",
      "time": "01:45 am",
      "msg": "5",
    },
    {
      "images": "https://i.pinimg.com/474x/d5/f1/36/d5f1360ca4123751dfd5297f83c3822d.jpg",
      "name": "rahul",
      "lastmsg": "Java",
      "time": "02:45 am",
      "msg": "2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: arrContent[index]["name"].toString(),
                    height: 20,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 12,
                    color: Color(0XFF889090),
                  ),
                  trailing: Column(
                    children: [
                      UiHelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 10,
                      ),
                      // UiHelper.CustomText(
                      //   text: arrContent[index]["msg"].toString(),
                      //   height: 16,
                      //   fontweight: FontWeight.bold,
                      //   color: Colors.green,
                      // ),
            
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0XFF00A884),
                        child: UiHelper.CustomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 18,
                          fontweight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0XFF00A884),
        child: Image.asset("assets/images/icons8-camera-50.png", height: 25, width: 25,color: Colors.white,),

      ),
    );
  }
}
