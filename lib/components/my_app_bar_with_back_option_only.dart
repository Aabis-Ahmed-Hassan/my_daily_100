import 'package:flutter/material.dart';

class MyAppBarWithBackOptionOnly extends StatelessWidget
    implements PreferredSizeWidget {
  MyAppBarWithBackOptionOnly({
    super.key,
  });

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return AppBar(
      automaticallyImplyLeading: false,
      title: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Icon(
              Icons.keyboard_arrow_left,
              color: Color(0xff595959),
              size: 32,
            ),
            Text(
              'Back',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xff595959),
              ),
            )
          ],
        ),
      ),
      centerTitle: false,
    );
  }
}
