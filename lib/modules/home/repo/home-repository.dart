import 'package:http/src/response.dart';
import 'package:space/modules/home/services/base-home-services.dart';
import 'package:space/modules/home/services/home-services.dart';
import 'package:space/utils/get-it.dart';

class HomeRepository implements BaseHomeServices {
  final HomeServices _homeServices = getIt<HomeServices>();
  /// Repository implementation of [BaseHomeServices.getLastDuty] method
  @override
  Future<Response?> getLastDuty() async {
    return await _homeServices.getLastDuty();
  }
}
