import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;
  var onTap;

  MyButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.055,
        decoration: BoxDecoration(
          color: Color(0xffD11A38),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
