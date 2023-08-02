import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key, required this.hintText, this.isSecure=false}) : super(key: key);
  final String hintText;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 65,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child:  Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              suffixIcon: isSecure?const Icon(Icons.remove_red_eye_rounded):null
          ),
          obscureText: isSecure,
        ),
      ),
    );
  }
}
