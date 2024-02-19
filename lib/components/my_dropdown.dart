import 'package:flutter/material.dart';

class MyDropDown extends StatelessWidget {
  String initialSelectionText, headingAboveDropDown;
  var dropDownEntry1, dropDownEntry2, dropDownEntry3;

  MyDropDown({
    super.key,
    required this.initialSelectionText,
    required this.headingAboveDropDown,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingAboveDropDown,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Plus Jakarta Sans',
            fontSize: 14,
            color: Color(
              0xff595959,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        DropdownMenu(
          trailingIcon: Icon(
            Icons.arrow_drop_down,
            color: Color(0xffC9C9C9),
            size: 26,
          ),
          initialSelection: initialSelectionText,
          textStyle: TextStyle(
            color: Color(0xffC9C9C9),
            fontWeight: FontWeight.w500,
            fontFamily: 'Plus Jakarta Sans',
            fontSize: 14,
          ),
          dropdownMenuEntries: [],
        )
      ],
    );
  }
}
