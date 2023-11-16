// home_screen_state.dart

part of 'home_screen_cubit.dart';

@immutable
abstract class HomeScreenState {}

class HomeScreenInitial extends HomeScreenState {}

class ListLoaded extends HomeScreenState {
  final List<String> items;

  ListLoaded(this.items);
}
