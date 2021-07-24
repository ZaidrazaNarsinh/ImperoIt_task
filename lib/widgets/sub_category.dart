import 'package:flutter/material.dart';
import 'package:task/services/network.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:task/utilities/constants.dart';
import 'product.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({required this.subCategory});

  final List subCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int subIndex){
              if(subIndex == subCategory.length){
                if(NetworkHelper.hasData == true) {
                  return SpinKitFadingCircle(size: 50.0, color: Colors.lightBlueAccent,);
                }else{
                  return Center(child: (Text('No more data available',style: kNoDataStyle,)));
                }
              }
              final data = subCategory[subIndex];
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['Name'].toString().toUpperCase(),style: kSubCategoryStyle),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width ,
                            height: 160.0,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index){
                                return Product(
                                    url: data['Product'][index]['ImageName'],
                                    productName: data['Product'][index]['Name'],
                                    priceCode: data['Product'][index]['PriceCode']
                                );
                              },
                              separatorBuilder: (context, index) => const SizedBox(width: 30.0,),
                              itemCount: data['Product'].length,
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context,subIndex) => const SizedBox(height: 20.0,),
            itemCount: subCategory.length + 1,
        ),
      ],
    );
  }
}