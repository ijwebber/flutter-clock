import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; // location name for UI
  String time; // time in that location
  String flag; // url to flag asset
  String url; // url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = now.toString();
    } catch (e) {
      print("Caught Error: $e");
      time = "Could not get time data";
    }
  }
}
