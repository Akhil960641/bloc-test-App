import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lms_foxa/view/bottomBar/cubit/bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInitial());
  void selectedIndex(int index)=> emit(BottomBarState(selectedIndex: index));
}
