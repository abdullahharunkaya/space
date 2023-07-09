import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:space/modules/home/model/last-duty.dart';
import 'package:space/modules/home/repo/home-repository.dart';

import '../../../utils/get-it.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoading());

  /// Last duty data for home view loaded condition
  LastDuty? lastDuty;

  /// Home repository from dependency injection
  final HomeRepository _homeRepository = getIt<HomeRepository>();

  /// Error message for home view error condition
  String errorMessage = "";

  /// Get initial data for home view when app start or refresh action triggered
  void getInitialData() {
    emit(HomeLoading());
    getLastDuty();
  }

  /// Get last duty data from repository and set state
  /// We scoped all error conditions except internet disconnection
  /// if response is null we set error message and emit error state
  /// if response is not null we check response status code and set error message and emit error state
  /// if response status code is 200 we set last duty data and emit loaded state
  Future<void> getLastDuty() async {
    var response = await _homeRepository.getLastDuty();
    if (response == null) {
      errorMessage = "Please check your internet connection";
      emit(HomeError());
      return;
    }
    switch (response.statusCode) {
      case 200:
        var map = jsonDecode(response.body);
        lastDuty = LastDuty.fromJson(map);
        emit(HomeLoaded());
        break;
      case 400:
        errorMessage = "Bad Request";
        emit(HomeError());
        break;
      case 401:
        errorMessage = "Unauthorized";
        emit(HomeError());
        break;
      case 403:
        errorMessage = "Forbidden";
        emit(HomeError());
        break;
      case 404:
        errorMessage = "Not Found";
        emit(HomeError());
        break;
      case 500:
        errorMessage = "Internal Server Error";
        emit(HomeError());
        break;
      case 504:
        errorMessage = "Gateway Timeout";
        emit(HomeError());
        break;
      default:
        errorMessage = "Unknown Error";
        emit(HomeError());
        break;
    }
  }

  /// Refresh action for home view
  Future<void> refresh() async {
    emit(HomeLoading());
    await getLastDuty();
  }
}
