import 'package:restaurant_manager/model/customer_model.dart';
import 'package:http/http.dart' as http;

class CustomerController {
  static const addUrl = "";

  Future<String> addCustomer(CustomerModel customerModel) async {
    final response =
        await http.post(Uri.parse(addUrl), body: customerModel.toJsonAdd());
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "Error";
    }
  }
}
