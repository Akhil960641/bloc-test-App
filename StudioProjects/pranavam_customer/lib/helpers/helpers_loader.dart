import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool isLoading = true;

const bgColorLoader = Color(0x0c8e8e8e);

const Dialog _alert = Dialog(
  backgroundColor: bgColorLoader,
  insetPadding: EdgeInsets.all(0),
);

loader({required BuildContext context}) {
  if (isLoading) {
    return;
  }

  isLoading = true;

  try {
    
    hideKeyboard;
  } catch (_) {
    
    debugPrint("ERRROR ON SNACKBAR");
  }

  try {
    showDialog(
      barrierDismissible: false,
      context: context,
      useSafeArea: false,
      builder: (BuildContext context) {
        return const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(statusBarColor: bgColorLoader),
          child: _alert,
        );
      },
    );
  } catch (e) {
    debugPrint("ERRROR ON POPUP:$e");
  }
}

hideLoader(BuildContext context) {
  if (isLoading) {
    isLoading = false;
    // Screen.closeDialog(context);
  }
}

void get hideKeyboard => FocusManager.instance.primaryFocus?.unfocus();
