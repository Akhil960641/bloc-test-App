class BottomBarState {

  int selectedIndex;
  BottomBarState({

    required this.selectedIndex,
  });

}
class BottomBarInitial extends BottomBarState {

  BottomBarInitial() : super(selectedIndex: 2);
}
