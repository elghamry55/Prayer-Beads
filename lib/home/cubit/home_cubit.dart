import 'package:bloc/bloc.dart';
import 'package:digital_tasbeeh/core/style/images_app.dart';
import 'package:digital_tasbeeh/core/style/string_app.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int count = 0;
  int _index = 0;
  int cycles = 0;

  final int maxTasbeeh = 100;

  List<String> titles = [
    StringApp.so,
    StringApp.al,
    StringApp.la,
    StringApp.alk,
    StringApp.lah,
  ];

  List<String> images = [
    ImagesApp.image1,
    ImagesApp.image2,
    ImagesApp.image3,
    ImagesApp.image4,
    ImagesApp.image5,
  ];

  void add() {
    count++;
    if(count >= maxTasbeeh) {
      cycles++;
      count = 0;
    }
    emit(UpdateState());
  }

  void rest() {
    count = 0;
    emit(UpdateState());
  }

  void next() {
    _index = (_index + 1) % titles.length;
    emit(UpdateState());
  }

  set index(int newIndex) {
    _index = newIndex % titles.length;
    emit(UpdateState());
  }

  int get index => _index;
  int get totalCycles => cycles;

  String get currentTitle => titles[_index];
  String get currentImage => images[_index];
}
