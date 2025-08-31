import 'package:flutter/material.dart';
import 'package:wathsapp_clone/Screens/Calls/callsscreen.dart';
import 'package:wathsapp_clone/Screens/Home%20Screen/Chats/chatscreen.dart';
import 'package:wathsapp_clone/Screens/Home%20Screen/Status/statusscreen.dart';
import 'package:wathsapp_clone/Screens/Home%20Screen/camera/camerascreen.dart';
import 'package:wathsapp_clone/Screens/Widgets/UiHelper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS", height: 16),
              Tab(text: "STATUS", height: 16),
              Tab(text: "CALLS", height: 16),
            ], indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
            text: "WhatsApp",
            height: 20,
            color: Colors.white,

          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/icons8-camera-50.png"),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
