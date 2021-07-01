import 'package:flutter/material.dart';
import '../constants.dart';
import '../customResponsive.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/profile_pic.png', height: 38.0),
          if (!CustomResponsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text('Angelina Joli'),
            ),
          InkWell(child: Icon(Icons.keyboard_arrow_down), onTap: () {})
        ],
      ),
    );
  }
}
