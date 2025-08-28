import 'package:flutter/material.dart';

import '../Widgets/UiHelper.dart';

class OptScreen extends StatelessWidget {
  String phonenumber;
  OptScreen({required this.phonenumber});

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Verify your Account ",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 50),
            UiHelper.CustomText(
              text: "You've tried to register +91$phonenumber",
              height: 16,
            ),
            UiHelper.CustomText(
              text: "recently. Wait before requesting an sms or call.",
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 115),
              child: Row(
                children: [
                  UiHelper.CustomText(text: "with your code.", height: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: UiHelper.CustomText(
                      text: "Wrong Number?",
                      height: 16,
                      color: Color(0XFF00A884),
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1Controller),
                SizedBox(width: 10),
                UiHelper.CustomContainer(otp2Controller),
                SizedBox(width: 10),
                UiHelper.CustomContainer(otp3Controller),
                SizedBox(width: 10),

                UiHelper.CustomContainer(otp4Controller),
                SizedBox(width: 10),

                UiHelper.CustomContainer(otp5Controller),
                SizedBox(width: 10),

                UiHelper.CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "Didn't receive code?",
              height: 16,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButtom(callback: (){}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
