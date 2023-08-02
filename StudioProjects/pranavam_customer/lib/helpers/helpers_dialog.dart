import 'package:flutter/material.dart';

Future showPopup(BuildContext context,
    {required Widget content, bool barrierDismissible = true}) {
  return showDialog(
      barrierColor: Colors.black12,
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          insetPadding: const EdgeInsets.symmetric(horizontal: 24.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(28.0))),
          content: content,
        );
      });
}
