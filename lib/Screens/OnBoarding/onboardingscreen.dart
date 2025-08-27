import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wathsapp_clone/Screens/Login/loginscreen.dart';
import 'package:wathsapp_clone/Screens/Widgets/UiHelper.dart';

class OnBoardingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/icons8-whatsapp-144.png"),
            SizedBox(height: 20,),
            UiHelper.CustomText(text: "Welcome to WhatsApp", height: 18, color: Colors.green ),
            SizedBox(height: 20,),

              Row(children: [
                UiHelper.CustomText(text: "Read out", height: 14),
                UiHelper.CustomText(text: " Privacy and Policy.", height: 14, color: Colors.blue),
                UiHelper.CustomText(text: 'Tap "Agree and continue" ', height: 14),
              ],),

            Row(children: [
                UiHelper.CustomText(text: ' to accept the', height: 14),
                UiHelper.CustomText(text: ' Teams of Service.', height: 14, color: Colors.blue),
              ],),

          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButtom(
        callback: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
        }, buttonname:"Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}