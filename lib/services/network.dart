import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:task/models/sub_category_model.dart';

final String uri = 'http://esptiles.imperoserver.in/api/API/Product/DashBoard';

class NetworkHelper {

  static Future getCategory() async {
    try {
      http.Response response = await http.post(Uri.parse(uri),
          headers: {"content-type": "application/json",},
          body: jsonEncode({
            "CategoryName": 0,
            "DeviceManufacturer": "Google",
            "DeviceModel": "Android SDK built for x86",
            "DeviceToken": " ",
            "PageIndex": 1
          }));
      if (response.statusCode == 200) {
        var fetchedData = json.decode(response.body);
        var categoryData = fetchedData['Result']['Category'];
        return categoryData;
      }
    }
    catch (e) {
      print(e);
    }
  }

  static Future _getSubCategory({required int pageIndex}) async {
    try {
      http.Response response = await http.post(Uri.parse(uri),
          headers: {"content-type": "application/json",},
          body: jsonEncode(
              {
                "CategoryId": 56,
                "PageIndex": pageIndex
              }
          )
      );
      if (response.statusCode == 200) {
        var fetchedData = json.decode(response.body);
        var subCategoryData = fetchedData['Result']['Category'][0]['SubCategories'];
        return subCategoryData;
      }
    }
    catch (e) {
      print(e);
    }
  }

  static int page = 1;
  static bool hasData = true;

  static getPagingView(page) {
    int lastPage = 4; //specific for this api better to take general one.
    if (page <= lastPage) {
      final getPaging = _getSubCategory(pageIndex: page);
      NetworkHelper.page++;
      return getPaging;
    } else {
      hasData = false;
      final List<SubCategories> noData = [];
      return noData;
    }
  }
}