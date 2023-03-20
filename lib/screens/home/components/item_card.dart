import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function()? press;
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          // height: 180,
          // width: 160,
           decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Hero(
            tag: "${product.id}",
            child: Image.asset(product.image)),
        ),
    ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            product.title,
            style: TextStyle(color: kTextLightColor),
          ),
        ), //product is our demo
        Text(
          "\$${product.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}
