import 'package:flutter/material.dart';

import '../components/my_app_bar_with_back_option_only.dart';
import '../components/my_button.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: MyAppBarWithBackOptionOnly(),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.055),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.045,
                ),
                const Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Color(0xffD11A38),
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height * 0.0275,
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                MyButton(title: 'Save New Password', onTap: () {}),
                MyUpload(),
                MyUpload(),
                MyUpload(),
              ],
            )),
      ),
    );
  }
}

class MyUpload extends StatelessWidget {
  const MyUpload({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: height * 0.15,
      decoration: BoxDecoration(
        color: Color(0xffFFE5E9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xffE2E2E2),
        ),
      ),
      child: Center(
        child: Icon(
          Icons.upload,
          size: 50,
          color: Color(0xff595959),
        ),
      ),
    );
  }
}
