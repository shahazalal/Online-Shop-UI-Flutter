import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/details_page_body.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/model/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailsPageBody(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'icons/search.svg',
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('icons/cart.svg', color: Colors.white)),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
