

import 'package:flutter_bloc/flutter_bloc.dart';

import 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState>{
  NavBarCubit (): super(NavBarInitial());

  int currentIndex = 0;

  void changeCurrentIndex(int index){
    currentIndex = index;
    emit(IndexChanged());
  }

}