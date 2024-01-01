import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled4/Repository/ModelClass/Jios_Model.dart';

import 'api_client.dart';


class JiosApi {
  ApiClient apiClient = ApiClient();


  Future<Jios_Model> getJios() async {
    String trendingpath = 'https://jio-saavan-unofficial.p.rapidapi.com/getdata?q=let me down';
    var body = {


    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Jios_Model.fromJson(jsonDecode(response.body));
  }

}