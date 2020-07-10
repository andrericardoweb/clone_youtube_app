import 'package:http/http.dart' as http;
import 'dart:convert';

const KEY_YOUTUBE_API = "AIzaSyA-oOFmHSiYMGNMB0ct2Uw1RwLhGFDP9No";
const ID_CHANNEL = "UCwXdFgeE9KYzlDdR7TG9cMw";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  search(String search) async {

    http.Response response = await http.get(
      URL_BASE + "search"
        "?part=snippet"
        "&type=video"
        "&maxResults=20"
        "&order=date"
        "&key=$KEY_YOUTUBE_API"
        "&channelId=$ID_CHANNEL"
        "&q=$search"
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> dataJson = json.decode(response.body);
      print("resultado: " + dataJson["pageInfo"].toString());

    } else {

    }

  }
}