/// Status : 200
/// Message : "OK"
/// Result : {"Category":[{"Id":56,"Name":"Ceramic","IsAuthorize":1,"Update080819":1,"Update130919":1,"SubCategories":[{"Id":176,"Name":"ALP","Product":[{"Name":"ALP GREY","PriceCode":"C12","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/8f2f43b0-53bf-446f-b593-78dfa021df04.png","Id":610},{"Name":"ALP GREY","PriceCode":"C12","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/53e6270e-4161-4ceb-834e-5f38bfaae9dc.png","Id":612},{"Name":"TOSA GREY","PriceCode":"C13","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/710bc745-6fac-4026-8168-9e3c946a97f9.png","Id":611}]},{"Id":110,"Name":"ARLES","Product":[{"Name":"ARLES PEARL","PriceCode":"B28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/0ecd004d-c068-44f7-b244-70e952f8e1fa.jpg","Id":318},{"Name":"MURETTO ARLES GRAPHITE DECOR","PriceCode":"B07","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/3f5f3968-8622-41e3-8a46-1a2792895ee8.jpg","Id":320},{"Name":"TREK GRAPHITE","PriceCode":"B17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/69c62d29-c971-4bdb-80b7-ea8aa11f1382.jpg","Id":324},{"Name":"TREK PEARL","PriceCode":"C01","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/6c2af722-e829-4cfd-a746-6b28a837febc.jpg","Id":323}]},{"Id":308,"Name":"ASPEN BRILLO 25X40","Product":[{"Name":"ASPEN BRILLO 24X40","PriceCode":"C22","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/95ad1e27-dd08-4b47-b091-fe7ee0611b9a.png","Id":959}]},{"Id":248,"Name":"BOWLAND","Product":[{"Name":"BOWLAND BONE 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/07450e30-217c-423b-ac02-3e0cf83d13eb.png","Id":802},{"Name":"BOWLAND BONE 45X45","PriceCode":"c17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/18f2d629-025a-4426-9e55-0b7b244c46a8.png","Id":797},{"Name":"BOWLAND GREY 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/384832c7-6a0a-4d96-ab4e-ecc6cc71aea2.png","Id":800},{"Name":"BOWLAND GREY 45X45","PriceCode":"c17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/6e0b842b-84e3-4499-a093-23a45e503179.png","Id":799},{"Name":"BOWLAND WHITE 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/ba159c15-fce5-4cdb-b2c2-4343aff8ac0a.png","Id":801}]},{"Id":323,"Name":"BURLINGTON","Product":[{"Name":"BURLINGTON GREY 30X90","PriceCode":"B30","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/ede7f364-2ad0-4b96-9c01-488ccaf5ac9f.png","Id":1035},{"Name":"BURLINGTON PEARL 30X90","PriceCode":"B30","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/bb9beaa4-1ef1-4ea8-946d-fe19f7d6a237.png","Id":1032},{"Name":"EDEN GREY 30X90","PriceCode":"A28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/3ab17cf1-66f3-4f43-ae1a-93362822d159.png","Id":1036},{"Name":"EDEN PEARL 30X90","PriceCode":"A28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/be23359f-8be2-47d8-a810-aa7c38763599.png","Id":1034}]}]}]}

class SubCategoryModel {
  int? status;
  String? message;
  Result? result;

  SubCategoryModel({
      this.status, 
      this.message, 
      this.result});

  SubCategoryModel.fromJson(dynamic json) {
    status = json["Status"];
    message = json["Message"];
    result = json["Result"] != null ? Result.fromJson(json["Result"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["Status"] = status;
    map["Message"] = message;
    if (result != null) {
      map["Result"] = result?.toJson();
    }
    return map;
  }

}

/// Category : [{"Id":56,"Name":"Ceramic","IsAuthorize":1,"Update080819":1,"Update130919":1,"SubCategories":[{"Id":176,"Name":"ALP","Product":[{"Name":"ALP GREY","PriceCode":"C12","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/8f2f43b0-53bf-446f-b593-78dfa021df04.png","Id":610},{"Name":"ALP GREY","PriceCode":"C12","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/53e6270e-4161-4ceb-834e-5f38bfaae9dc.png","Id":612},{"Name":"TOSA GREY","PriceCode":"C13","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/710bc745-6fac-4026-8168-9e3c946a97f9.png","Id":611}]},{"Id":110,"Name":"ARLES","Product":[{"Name":"ARLES PEARL","PriceCode":"B28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/0ecd004d-c068-44f7-b244-70e952f8e1fa.jpg","Id":318},{"Name":"MURETTO ARLES GRAPHITE DECOR","PriceCode":"B07","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/3f5f3968-8622-41e3-8a46-1a2792895ee8.jpg","Id":320},{"Name":"TREK GRAPHITE","PriceCode":"B17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/69c62d29-c971-4bdb-80b7-ea8aa11f1382.jpg","Id":324},{"Name":"TREK PEARL","PriceCode":"C01","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/6c2af722-e829-4cfd-a746-6b28a837febc.jpg","Id":323}]},{"Id":308,"Name":"ASPEN BRILLO 25X40","Product":[{"Name":"ASPEN BRILLO 24X40","PriceCode":"C22","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/95ad1e27-dd08-4b47-b091-fe7ee0611b9a.png","Id":959}]},{"Id":248,"Name":"BOWLAND","Product":[{"Name":"BOWLAND BONE 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/07450e30-217c-423b-ac02-3e0cf83d13eb.png","Id":802},{"Name":"BOWLAND BONE 45X45","PriceCode":"c17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/18f2d629-025a-4426-9e55-0b7b244c46a8.png","Id":797},{"Name":"BOWLAND GREY 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/384832c7-6a0a-4d96-ab4e-ecc6cc71aea2.png","Id":800},{"Name":"BOWLAND GREY 45X45","PriceCode":"c17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/6e0b842b-84e3-4499-a093-23a45e503179.png","Id":799},{"Name":"BOWLAND WHITE 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/ba159c15-fce5-4cdb-b2c2-4343aff8ac0a.png","Id":801}]},{"Id":323,"Name":"BURLINGTON","Product":[{"Name":"BURLINGTON GREY 30X90","PriceCode":"B30","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/ede7f364-2ad0-4b96-9c01-488ccaf5ac9f.png","Id":1035},{"Name":"BURLINGTON PEARL 30X90","PriceCode":"B30","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/bb9beaa4-1ef1-4ea8-946d-fe19f7d6a237.png","Id":1032},{"Name":"EDEN GREY 30X90","PriceCode":"A28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/3ab17cf1-66f3-4f43-ae1a-93362822d159.png","Id":1036},{"Name":"EDEN PEARL 30X90","PriceCode":"A28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/be23359f-8be2-47d8-a810-aa7c38763599.png","Id":1034}]}]}]

class Result {
  List<Category>? category;

  Result({
      this.category});

  Result.fromJson(dynamic json) {
    if (json["Category"] != null) {
      category = [];
      json["Category"].forEach((v) {
        category?.add(Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (category != null) {
      map["Category"] = category?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// Id : 56
/// Name : "Ceramic"
/// IsAuthorize : 1
/// Update080819 : 1
/// Update130919 : 1
/// SubCategories : [{"Id":176,"Name":"ALP","Product":[{"Name":"ALP GREY","PriceCode":"C12","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/8f2f43b0-53bf-446f-b593-78dfa021df04.png","Id":610},{"Name":"ALP GREY","PriceCode":"C12","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/53e6270e-4161-4ceb-834e-5f38bfaae9dc.png","Id":612},{"Name":"TOSA GREY","PriceCode":"C13","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/710bc745-6fac-4026-8168-9e3c946a97f9.png","Id":611}]},{"Id":110,"Name":"ARLES","Product":[{"Name":"ARLES PEARL","PriceCode":"B28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/0ecd004d-c068-44f7-b244-70e952f8e1fa.jpg","Id":318},{"Name":"MURETTO ARLES GRAPHITE DECOR","PriceCode":"B07","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/3f5f3968-8622-41e3-8a46-1a2792895ee8.jpg","Id":320},{"Name":"TREK GRAPHITE","PriceCode":"B17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/69c62d29-c971-4bdb-80b7-ea8aa11f1382.jpg","Id":324},{"Name":"TREK PEARL","PriceCode":"C01","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/6c2af722-e829-4cfd-a746-6b28a837febc.jpg","Id":323}]},{"Id":308,"Name":"ASPEN BRILLO 25X40","Product":[{"Name":"ASPEN BRILLO 24X40","PriceCode":"C22","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/95ad1e27-dd08-4b47-b091-fe7ee0611b9a.png","Id":959}]},{"Id":248,"Name":"BOWLAND","Product":[{"Name":"BOWLAND BONE 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/07450e30-217c-423b-ac02-3e0cf83d13eb.png","Id":802},{"Name":"BOWLAND BONE 45X45","PriceCode":"c17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/18f2d629-025a-4426-9e55-0b7b244c46a8.png","Id":797},{"Name":"BOWLAND GREY 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/384832c7-6a0a-4d96-ab4e-ecc6cc71aea2.png","Id":800},{"Name":"BOWLAND GREY 45X45","PriceCode":"c17","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/6e0b842b-84e3-4499-a093-23a45e503179.png","Id":799},{"Name":"BOWLAND WHITE 20X60","PriceCode":"C05","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/ba159c15-fce5-4cdb-b2c2-4343aff8ac0a.png","Id":801}]},{"Id":323,"Name":"BURLINGTON","Product":[{"Name":"BURLINGTON GREY 30X90","PriceCode":"B30","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/ede7f364-2ad0-4b96-9c01-488ccaf5ac9f.png","Id":1035},{"Name":"BURLINGTON PEARL 30X90","PriceCode":"B30","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/bb9beaa4-1ef1-4ea8-946d-fe19f7d6a237.png","Id":1032},{"Name":"EDEN GREY 30X90","PriceCode":"A28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/3ab17cf1-66f3-4f43-ae1a-93362822d159.png","Id":1036},{"Name":"EDEN PEARL 30X90","PriceCode":"A28","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/be23359f-8be2-47d8-a810-aa7c38763599.png","Id":1034}]}]

class Category {
  int? id;
  String? name;
  int? isAuthorize;
  int? update080819;
  int? update130919;
  List<SubCategories>? subCategories;

  Category({
      this.id, 
      this.name, 
      this.isAuthorize, 
      this.update080819, 
      this.update130919, 
      this.subCategories});

  Category.fromJson(dynamic json) {
    id = json["Id"];
    name = json["Name"];
    isAuthorize = json["IsAuthorize"];
    update080819 = json["Update080819"];
    update130919 = json["Update130919"];
    if (json["SubCategories"] != null) {
      subCategories = [];
      json["SubCategories"].forEach((v) {
        subCategories?.add(SubCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["Id"] = id;
    map["Name"] = name;
    map["IsAuthorize"] = isAuthorize;
    map["Update080819"] = update080819;
    map["Update130919"] = update130919;
    if (subCategories != null) {
      map["SubCategories"] = subCategories?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// Id : 176
/// Name : "ALP"
/// Product : [{"Name":"ALP GREY","PriceCode":"C12","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/8f2f43b0-53bf-446f-b593-78dfa021df04.png","Id":610},{"Name":"ALP GREY","PriceCode":"C12","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/53e6270e-4161-4ceb-834e-5f38bfaae9dc.png","Id":612},{"Name":"TOSA GREY","PriceCode":"C13","ImageName":"http://esptiles.imperoserver.in/Admin/Files/ProductImage/710bc745-6fac-4026-8168-9e3c946a97f9.png","Id":611}]

class SubCategories {
  int? id;
  String? name;
  List<Product>? product;

  SubCategories({
      this.id, 
      this.name, 
      this.product});

  SubCategories.fromJson(dynamic json) {
    id = json["Id"];
    name = json["Name"];
    if (json["Product"] != null) {
      product = [];
      json["Product"].forEach((v) {
        product?.add(Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["Id"] = id;
    map["Name"] = name;
    if (product != null) {
      map["Product"] = product?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// Name : "ALP GREY"
/// PriceCode : "C12"
/// ImageName : "http://esptiles.imperoserver.in/Admin/Files/ProductImage/8f2f43b0-53bf-446f-b593-78dfa021df04.png"
/// Id : 610

class Product {
  String? name;
  String? priceCode;
  String? imageName;
  int? id;

  Product({
      this.name, 
      this.priceCode, 
      this.imageName, 
      this.id});

  Product.fromJson(dynamic json) {
    name = json["Name"];
    priceCode = json["PriceCode"];
    imageName = json["ImageName"];
    id = json["Id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["Name"] = name;
    map["PriceCode"] = priceCode;
    map["ImageName"] = imageName;
    map["Id"] = id;
    return map;
  }

}