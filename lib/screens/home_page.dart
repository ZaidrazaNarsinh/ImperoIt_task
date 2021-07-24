import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:task/utilities/constants.dart';
import 'package:task/widgets/category.dart';
import 'package:task/services/network.dart';
import 'package:task/widgets/sub_category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List subCategory = [];
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    NetworkHelper.getPagingView(NetworkHelper.page).then((value) {
      setState(() {
        subCategory = value;
      });
    });
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        final newData = await NetworkHelper.getPagingView(NetworkHelper.page);
        setState(() {
          subCategory.addAll(newData);
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, actions: [
        Padding(
            padding: const EdgeInsets.only(top: 5.0, right: 15.0, bottom: 10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Icon(
                FeatherIcons.filter,
                color: Colors.white,
                size: kAppBarIconSize,
              ),
              SizedBox(
                width: 15.0,
              ),
              Icon(
                FeatherIcons.search,
                color: Colors.white,
                size: kAppBarIconSize,
              )
            ]))
      ]),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FutureBuilder(
                        future: NetworkHelper.getCategory(),
                        builder: (context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return CategoryName(fetchedData: snapshot.data);
                          } else if (snapshot.hasError) {
                            return Text('Unable to load data');
                          } else
                            return SizedBox();
                        }),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.only(top: 25.0, left: 20.0),
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.vertical,
                    child: SubCategory(
                      subCategory: subCategory,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
