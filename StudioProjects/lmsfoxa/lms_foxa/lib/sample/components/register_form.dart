import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms_foxa/viewModel/utils.dart';
import '../login_screen_controller.dart';
import 'login_long_button.dart';
import 'login_textfield.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginScreenController loginScreenController=Get.find();
    return SizedBox(
      // color: Colors.red,
      height: MediaQuery.of(context).size.height * .8,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Account",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(
                  color: bgColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .01,
            ),
            Text(
              "Please Enter the details below to continue",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(
                color: bgColor,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .07,
            ),
            const LoginTextField(
              hintText: "UserName",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .02,
            ),
            const LoginTextField(
                hintText: "Email",),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .02,
            ),
            const LoginTextField(
                hintText: "Password", isSecure: true),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .02,
            ),
            const LoginTextField(
              hintText: "Confirm Password",),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .02,
            ),
            const LoginLongButton(text: "Register"),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already a Member? ",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: bgColor,)),
                GestureDetector(
                  onTap:() {
                    print("object");
                    loginScreenController.alreadyMember();
                  },
                  child: Text(
                    "Login",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.red,),
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
