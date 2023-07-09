import 'package:http/http.dart' as http;

abstract class BaseHomeServices {
  Future<http.Response?> getLastDuty();

}
