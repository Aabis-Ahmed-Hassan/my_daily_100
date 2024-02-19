import 'package:flutter/material.dart';

import '../constants/app_texts.dart';

class ProfileSetupSuccessfully extends StatelessWidget {
  const ProfileSetupSuccessfully({super.key});

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
              'Successfully Set Up',
              style: TextStyle(
                color: Color(0xffD11A38),
                fontWeight: FontWeight.w600,
                fontSize: 34,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
            const Text(
              'Congratulations! your profile account was set',
              textAlign: TextAlign.center,
              style: AppTexts.myParagraph1TS,
            ),
          ],
        ),
      ),
    ));
  }
}
