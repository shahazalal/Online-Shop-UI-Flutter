import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/body.dart';
import 'package:shop_app/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'icons/back.svg',
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'icons/search.svg',
              color: kTextColor,
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'icons/cart.svg',
              color: kTextColor,
            )),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
