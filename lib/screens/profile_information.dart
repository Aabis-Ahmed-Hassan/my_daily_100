import 'package:flutter/material.dart';
import 'package:my_daily_100/components/my_text_form_field.dart';
import 'package:my_daily_100/screens/add_motivation.dart';

import '../components/my_app_bar_with_back_option_only.dart';
import '../components/my_button.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
        appBar: MyAppBarWithBackOptionOnly(),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.055),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.045,
                        ),
                        const Text(
                          'Profile Information',
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
                        Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: height * 0.11,
                                  width: height * 0.11,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      width: 2,
                                      color: Color(0xffD11A38),
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.person,
                                      size: 32,
                                      color: Color(
                                        0xffD11A38,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                              ],
                            ),
                            Positioned(
                                bottom: 0,
                                left: 1 / 2,
                                right: 1 / 2,
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: height * 0.0325,
                                      width: height * 0.0325,
                                      decoration: BoxDecoration(
                                        color: Color(0xffD11A38),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 21,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        MyTextFormField(
                          label: 'Full Name',
                          hintText: 'John Doe',
                          showPrefixIcon: false,
                          showSuffixIcon: false,
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        MyTextFormField(
                          label: 'Full Name',
                          hintText: 'John Doe',
                          showPrefixIcon: false,
                          showSuffixIcon: false,
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        MyTextFormField(
                          label: 'Full Name',
                          hintText: 'John Doe',
                          showPrefixIcon: false,
                          showSuffixIcon: false,
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        MyTextFormField(
                          label: 'Address',
                          hintText: 'Great street 01',
                          showPrefixIcon: false,
                          showSuffixIcon: false,
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: MyButton(
                          title: 'Add Motivation',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddMotivation()));
                          }),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                  ],
                )
              ],
            )));
  }
}
