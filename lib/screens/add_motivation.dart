import 'package:flutter/material.dart';
import 'package:my_daily_100/screens/upload_image.dart';

import '../components/my_app_bar_with_back_option_only.dart';
import '../components/my_button.dart';

class AddMotivation extends StatelessWidget {
  AddMotivation({super.key});

  List motivationTitle = [
    'Health',
    'Wealth',
    'Travel',
  ];
  List motivationImageAddress = [
    'assets/images/',
    'assets/images/',
    'assets/images/',
  ];

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
                          height: height * 0.05,
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
                          height: height * 0.0285,
                        ),
                        Column(
                          children: List.generate(
                            3,
                            (index) => MyMotivation(
                                title: motivationTitle[index],
                                imageAddress: motivationImageAddress[index]),
                          ),
                        ),

                        /*
                        *
                        *
                        *     MyMotivation(title: 'Health', imageAddress: 'adf'),
                            MyMotivation(title: 'Wealth', imageAddress: 'adf'),
                            MyMotivation(title: 'Travel', imageAddress: 'adf'),

                        *
                        * */
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height * 0.1275,
                      color: Colors.white,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: MyButton(
                          title: 'Upload Your Dreams',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UploadImage()));
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

class MyMotivation extends StatelessWidget {
  String title;
  String imageAddress;
  MyMotivation({super.key, required this.title, required this.imageAddress});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.02),
      height: height * 0.19,
      decoration: BoxDecoration(
        boxShadow: [
          const BoxShadow(
            color: Color(0xff000000),
            blurRadius: 0.2,
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imageAddress),
          fit: BoxFit.cover,
        ),
        color: const Color(0xffFFE5E9).withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffE2E2E2),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
            color: Color(0xff595959),
            fontFamily: 'Plus Jakarta Sans',
          ),
        ),
      ),
    );
  }
}
