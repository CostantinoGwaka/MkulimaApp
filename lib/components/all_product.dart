import 'package:flutter/material.dart';
import 'package:shop_app/models/Mazao.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class AllProductCard extends StatelessWidget {
  const AllProductCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Mazao product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Container(
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: getProportionateScreenWidth(150),
                  child: AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Hero(
                        tag: product.id.toString(),
                        child: Image.asset("assets/images/product.png"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(product.name, style: TextStyle(color: Colors.black, fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
                // const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\Tsh. ${product.price}",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                    // InkWell(
                    //   borderRadius: BorderRadius.circular(50),
                    //   onTap: () {},
                    //   child: Container(
                    //     padding: EdgeInsets.all(getProportionateScreenWidth(80)),
                    //     height: getProportionateScreenWidth(98),
                    //     width: getProportionateScreenWidth(98),
                    //     decoration: BoxDecoration(
                    //       color: product.isFavourite
                    //           ? kPrimaryColor.withOpacity(0.15)
                    //           : kSecondaryColor.withOpacity(0.1),
                    //       shape: BoxShape.circle,
                    //     ),
                    //     child: SvgPicture.asset(
                    //       "assets/icons/Heart Icon_2.svg",
                    //       color: product.isFavourite
                    //           ? Color(0xFFFF4848)
                    //           : Color(0xFFDBDEE4),
                    //     ),
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
