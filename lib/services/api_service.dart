// ignore_for_file: body_might_complete_normally_nullable, unused_local_variable, no_leading_underscores_for_local_identifiers

import "dart:developer";
import "package:techcarreer_technopark_bootcamp/constants/api_constants.dart";
import "package:techcarreer_technopark_bootcamp/model/user_model.dart";
import 'package:http/http.dart' as http;


class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndPoint); 
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
      
    } catch (e) {
      log(e.toString());
    }
  } 
}