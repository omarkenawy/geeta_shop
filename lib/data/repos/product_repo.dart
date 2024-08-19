import 'package:geeta_shop/data/base_request.dart';
import 'package:geeta_shop/data/models/categories.dart';
import 'package:geeta_shop/data/models/prodcut.dart';
import 'package:geeta_shop/utils/api_constant.dart';

class ProductRepo {
  static Future<List<Product>?> getAllProducts() async {
    final response =
        await BaseRequest.dynamicRequest(path: ApiConstans.getAllProducts);
    if (response == null ||
        response["products"] == null ||
        response["products"] is! List) {
      return null;
    }
    return (response["products"] as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }

  static Future<List<Categories>?> getAllCategories() async {
    final response =
        await BaseRequest.dynamicRequest(path: ApiConstans.getAllCategories);
    if (response == null ||
        response["categories"] == null ||
        response["categories"] is! List) {
      return null;
    }
    return (response["categories"] as List)
        .map((e) => Categories.fromJson(e))
        .toList();
  }

  static Future<List<Product>?> getSingleProduct() async {
    final response =
        await BaseRequest.dynamicRequest(path: ApiConstans.getSingleProduct);
    if (response == null) return null;
    if (response is! Map<String, dynamic>) return null;
    return (response["product"] as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
