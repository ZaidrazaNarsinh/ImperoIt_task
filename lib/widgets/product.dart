import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:task/utilities/constants.dart';

class Product extends StatelessWidget {

  Product({required this.url,required this.productName,required this.priceCode});
  final String url;
  final String productName;
  final String priceCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
            children: [
              SizedBox(
                height: 130.0,
                width: 130.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image(
                    image: NetworkImage(url),fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 15.0, left: 15.0),
                  height: 22.5,
                  width: 45.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff25A0C7),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(child: Text(priceCode,style: kPriceCodeStyle,))
              )

            ]
        ),
        Container(width: 100,child: AutoSizeText(productName,maxLines: 1,style: kProductNameStyle,)),
      ],
    );
  }
}
