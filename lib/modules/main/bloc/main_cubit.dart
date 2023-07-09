import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(SplashState());

  ///We call showHome method from MainCubit to show HomeView
  void showHome() {
    emit(HomeState());
  }
}
