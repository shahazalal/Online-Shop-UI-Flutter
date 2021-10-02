import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/model/product.dart';

class DetailsPageBody extends StatelessWidget {
  final Product product;
  const DetailsPageBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('Color'),
                              Container(
                                margin: EdgeInsets.only(
                                    top: kDefaultPadding / 4,
                                    right: kDefaultPadding / 2),
                                padding: EdgeInsets.all(2.5),
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Color(0xFF356C95))),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Color(0xFF356C95),
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.description,
                          style: TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aristocratic Hand Bag',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(text: 'Price\n'),
                              TextSpan(
                                  text: '\$${product.prize}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                            ]),
                          ),
                          SizedBox(
                            width: kDefaultPadding,
                          ),
                          Expanded(child: Image.asset(product.image))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
