import 'package:flutter/material.dart';
import 'package:my_daily_100/components/my_button.dart';
import 'package:my_daily_100/components/my_text_form_field.dart';
import 'package:my_daily_100/constants/app_texts.dart';
import 'package:my_daily_100/screens/privacy_policy.dart';
import 'package:my_daily_100/screens/sign_in.dart';
import 'package:my_daily_100/screens/successfully_verified.dart';
import 'package:my_daily_100/screens/terms_and_conditions.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value1 = false;
  bool value2 = false;
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
                  height: height * 0.075,
                ),
                Image(
                  height: height * 0.05,
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xffD11A38),
                    fontWeight: FontWeight.w600,
                    fontSize: 34,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
                const Text(
                  'Create you new account',
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
                    showSuffixIcon: false),
                SizedBox(
                  height: height * 0.025,
                ),
                MyTextFormField(
                    label: 'Confirm Password',
                    hintText: 'Password123',
                    showPrefixIcon: false,
                    showSuffixIcon: false),
                SizedBox(
                  height: height * 0.01,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: value1,
                        onChanged: (bool? a) {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                      ),
                      Text(
                        'By sign up I agree with ',
                        style: TextStyle(
                          color: Color(0xff595959),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsAndConditions()));
                        },
                        child: Text(
                          'Terms and Conditions',
                          style: TextStyle(
                            color: Color(0xffD11A38),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: value2,
                        onChanged: (bool? a) {
                          setState(() {
                            value2 = !value2;
                          });
                        },
                      ),
                      Text(
                        'By sign up I agree with ',
                        style: TextStyle(
                          color: Color(0xff595959),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy()));
                        },
                        child: Text(
                          'Privacy and Policy',
                          style: TextStyle(
                            color: Color(0xffD11A38),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                MyButton(
                    title: 'Create New Account',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuccessfullyVerified()));
                    }),
                SizedBox(
                  height: height * 0.008,
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
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text(
                        "Sign In",
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
