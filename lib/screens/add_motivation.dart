import 'package:flutter/material.dart';

import '../components/my_app_bar_with_back_option_only.dart';
import '../components/my_button.dart';

class AddMotivation extends StatelessWidget {
  const AddMotivation({super.key});

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
                          'Add Motivation',
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
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: MyButton(title: 'Add Motivation', onTap: () {}),
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
