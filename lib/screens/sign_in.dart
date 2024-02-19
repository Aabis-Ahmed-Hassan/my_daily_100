import 'package:flutter/material.dart';
import 'package:my_daily_100/components/my_button.dart';
import 'package:my_daily_100/components/my_text_form_field.dart';
import 'package:my_daily_100/constants/app_texts.dart';
import 'package:my_daily_100/screens/forget_password.dart';
import 'package:my_daily_100/screens/sign_up.dart';
import 'package:my_daily_100/screens/successfully_verified.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.055),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.14,
                ),
                const Text(
                  'Welcome Back',
                  style: AppTexts.myHeading1TS,
                ),
                const Text(
                  'Sign in to continue',
                  style: AppTexts.myParagraph1TS,
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                MyTextFormField(
                    label: 'Email',
                    hintText: 'example@email.com',
                    showPrefixIcon: false,
                    showSuffixIcon: false),
                SizedBox(
                  height: height * 0.025,
                ),
                MyTextFormField(
                  label: 'Password',
                  hintText: 'Password123',
                  showPrefixIcon: false,
                  showSuffixIcon: false,
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Color(0xff595959),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                MyButton(
                    title: 'Login',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuccessfullyVerified()));
                    }),
                SizedBox(
                  height: height * 0.0275,
                ),
                const Text(
                  'Or',
                  style: TextStyle(
                    color: Color(0xff595959),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
                SizedBox(
                  height: height * 0.0275,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: height * 0.055,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xffE2E2E2),
                        )),
                    child: const Center(
                      child: Text(
                        'Google',
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xff0D0D0D),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.0125),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: height * 0.055,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xffE2E2E2),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Apple',
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xff0D0D0D),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xff0D0D0D),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xffD11A38),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
