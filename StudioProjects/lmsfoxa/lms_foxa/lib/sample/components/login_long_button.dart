import 'package:flutter/material.dart';
import 'package:lms_foxa/viewModel/utils.dart';


class LoginLongButton extends StatelessWidget {
  const LoginLongButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 65,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
