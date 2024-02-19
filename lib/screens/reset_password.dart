import 'package:flutter/material.dart';
import 'package:my_daily_100/components/my_app_bar_with_back_option_only.dart';
import 'package:my_daily_100/components/my_button.dart';

import '../components/my_text_form_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                    fontSize: 34,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
                SizedBox(
                  height: height * 0.0275,
                ),
                MyTextFormField(
                    label: 'New Password',
                    hintText: 'New Password',
                    showPrefixIcon: false,
                    showSuffixIcon: false),
                SizedBox(
                  height: height * 0.025,
                ),
                MyTextFormField(
                  label: 'Confirm New Password',
                  hintText: 'New Password',
                  showPrefixIcon: false,
                  showSuffixIcon: false,
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                Text(
                  '*Please make sure the password match',
                  style: TextStyle(
                    color: Color(0xff595959),
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                MyButton(title: 'Save New Password', onTap: () {}),
              ],
            )),
      ),
    );
  }
}
