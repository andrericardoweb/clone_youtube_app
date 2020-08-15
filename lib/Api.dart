import 'package:http/http.dart' as http;

const KEY_YOUTUBE_API = "AIzaSyCeE6ewo8SWsgOqjd34ldIQ7xYFHk2CHYQ";
const ID_CHANNEL = "UCwXdFgeE9KYzlDdR7TG9cMw";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  toSearch(String searchValue) async {
    http.Response response = await http.get(URL_BASE +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$KEY_YOUTUBE_API"
            "&channelId=$ID_CHANNEL"
            "&q=$searchValue");
    if (response.statusCode == 200) {
      print("resultado: " + response.body);
    } else {
      print("resultado: " + response.statusCode.toString());
    }
  }
}

/*class Api {
  // ignore: missing_return
  Future<List<Video>> toSearch(String search) async {

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

      List<Video> videos = dataJson["items"].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();

      return videos;

    } else {
      
    }
  }
}*/
