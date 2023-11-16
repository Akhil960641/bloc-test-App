import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit(this.context) : super(HomeScreenInitial()) {
    sherdget();
  }

  BuildContext context;
  List<String> list = [];
  var textCtr = TextEditingController();
  var editCtr = TextEditingController();
  bool valueChange = true;

  valueCheck() {
    if (textCtr.text.isNotEmpty) {
      valueChange = false;
      emit(HomeScreenInitial());
    } else {
      valueChange = true;
      emit(HomeScreenInitial());
    }
  }

  sherdget() async {
    var sh = await SharedPreferences.getInstance();
    emit(HomeScreenInitial());

    list = sh.getStringList("list") ?? [];
    emit(HomeScreenInitial());
  }

  void addItem() async {
    if (textCtr.text.isNotEmpty) {
      list.add(textCtr.text);
      textCtr.clear();
      emit(HomeScreenInitial());
      var sh = await SharedPreferences.getInstance();
      sh.setStringList("list", list);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        showCloseIcon: true,
        closeIconColor: Colors.white,
        backgroundColor: Colors.black,
        content: Text("please text"),
      ));
    }
  }

  void editItem(int index) async {
    editCtr.text = list[index];
    final result = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Item'),
          content: TextField(
            controller: editCtr,
            decoration: const InputDecoration(
              hintText: 'Edit Text',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false); // Cancel editing
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true); // Confirm editing
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    if (result != null && result as bool) {
      list[index] = editCtr.text;
      editCtr.clear();
      emit(HomeScreenInitial());
      var sh = await SharedPreferences.getInstance();
      sh.setStringList("list", list);
    }
  }

  void deleteItem(int index) async {
    final result = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Item'),
          content: const Text('Are you sure you want to delete this item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false); // Cancel deletion
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true); // Confirm deletion
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );

    if (result != null && result as bool) {
      list.removeAt(index);
      emit(HomeScreenInitial());
      var sh = await SharedPreferences.getInstance();
      sh.setStringList("list", list);
    }
  }
}
