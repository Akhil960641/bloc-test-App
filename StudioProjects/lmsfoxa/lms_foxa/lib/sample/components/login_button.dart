import 'package:flutter/material.dart';
import 'package:lms_foxa/viewModel/utils.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.text,
    required this.isClicked,
    required this.index,
  }) : super(key: key);
  final String text;
  final bool isClicked;
  final int index;

  // final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 55,
      decoration: BoxDecoration(
        color: isClicked ? bgColor : Colors.grey[200],
        border: Border.all(color: Colors.white, width: 3),
        borderRadius: index == 0
            ? const BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15))
            : const BorderRadius.only(
                topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: isClicked ? Colors.white : bgColor,
              ),
        ),
      ),
    );
  }
}
