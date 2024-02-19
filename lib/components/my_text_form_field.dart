import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  String label, hintText;
  bool showPrefixIcon, showSuffixIcon;
  Icon? prefixIcon, suffixIcon;

  MyTextFormField(
      {super.key,
      required this.label,
      required this.hintText,
      required this.showPrefixIcon,
      required this.showSuffixIcon,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xff595959),
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontFamily: 'Plus Jakarta Sans',
          ),
        ),
        SizedBox(
          height: height * 0.005,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Color(0xffE2E2E2), // Border color
                  width: 2),
            ),
            prefixIcon: showPrefixIcon ? prefixIcon : null,
            suffixIcon: showSuffixIcon ? suffixIcon : null,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xffC9C9C9),
              fontSize: 14,
              fontFamily: 'Plus Jakarta Sans',
            ),
          ),
        )
      ],
    );
  }
}
