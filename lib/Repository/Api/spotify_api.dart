
import 'dart:convert';

import 'package:http/http.dart';


import '../ModelClass/spotify_model.dart';
import 'api_client.dart';

class SpotifyApi {
  ApiClient apiClient = ApiClient();


  Future<SpotifyModel> getSpotify(String text) async {
    String trendingpath = 'https://spotify23.p.rapidapi.com/search/?q=<REQUIRED>&type=multi&offset=0&limit=10&numberOfTopResults=5';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', (body));

    return SpotifyModel.fromJson(jsonDecode(response.body));
  }
}