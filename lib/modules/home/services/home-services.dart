import 'package:http/http.dart' as http;
import 'package:http/src/response.dart';
import 'package:space/modules/home/services/base-home-services.dart';

class HomeServices implements BaseHomeServices {
  /// Repository implementation of [BaseHomeServices.getLastDuty] method
  @override
  Future<Response?> getLastDuty() async {
    try {
      var response = await http
          .get(Uri.parse('https://api.spacexdata.com/v4/launches/latest'));
      return response;
    } catch (e) {
      return null;
    }
  }
}
