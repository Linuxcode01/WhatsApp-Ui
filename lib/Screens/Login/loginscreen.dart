import 'package:flutter/material.dart';
import 'package:wathsapp_clone/Screens/Widgets/UiHelper.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = "India";

  List<String> countries = ["America", "Africa", "Italy","Germany"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            UiHelper.CustomText(text: "Enter your phone number", height: 20,color: Color(0XFF00A884),fontweight: FontWeight.bold),
            SizedBox(height: 30,),
            UiHelper.CustomText(text: "WhatsApp will need to verify your phone", height: 16),
            UiHelper.CustomText(text: "number. Carrier charge may apply.", height: 16),
            UiHelper.CustomText(text: "What's my number?", height: 16, color: Color(0XFF00A884)),
            SizedBox(height: 50,),
            DropdownButtonFormField(items: countries.map( (String country){
              return DropdownMenuItem(value: country,child: Text(country),);
            }).toList(), onChanged: (newvalue){
              setState(() {
                selectedCountry = newvalue!;
              });
            }, value: selectedCountry, decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(

              )
            ),)
          ],
        ),
      ),
    );
  }
}