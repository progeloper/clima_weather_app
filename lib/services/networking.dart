import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  dynamic getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      //print(jsonDecode(response.body)['main']['temp']);
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }

}
