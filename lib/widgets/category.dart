import 'package:flutter/material.dart';
import 'package:task/utilities/constants.dart';

class CategoryName extends StatefulWidget {
  CategoryName({required this.fetchedData});
  final dynamic fetchedData;
  @override
  State<CategoryName> createState() => _CategoryNameState();
}
class _CategoryNameState extends State<CategoryName> {
  bool isSelected = false;
  List<int> selectedIndexList = [];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ListView.separated(
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index == 0) return SizedBox();
                return GestureDetector(
                    onTap: (){
                      selectedIndexList.clear();
                      if (!selectedIndexList.contains(index)) {
                        selectedIndexList.add(index);
                      } else {
                        selectedIndexList.remove(index);
                      }
                      setState(() {

                      });
                    },
                    child: Center(
                      child: Text(
                          widget.fetchedData[index]['Name'].toString().toUpperCase(),
                          style: selectedIndexList.contains(index) ? kOnSelectedCategory : kNotSelectedCategory),
                    )
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: 40.0,
                  ),
              itemCount: widget.fetchedData.length),
        ],
      ),
    );
  }
}
