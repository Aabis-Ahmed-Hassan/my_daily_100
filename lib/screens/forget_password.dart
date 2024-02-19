import 'package:flutter/material.dart';
import 'package:my_daily_100/components/my_button.dart';

import '../constants/app_texts.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.055),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(''),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Text(
              'Forget Password',
              style: AppTexts.myHeading1TS,
            ),
            const Text(
              'Your account is set now, we will redirect you to profile information',
              textAlign: TextAlign.center,
              style: AppTexts.myParagraph1TS,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            MyButton(title: 'Resend the Link', onTap: () {}),
          ],
        ),
      ),
    ));
  }
}
