import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms_foxa/viewModel/utils.dart';
import '../login_screen_controller.dart';
import 'login_long_button.dart';
import 'login_textfield.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginScreenController loginScreenController=Get.find();
    return SizedBox(
      // color: Colors.red,
      height: MediaQuery.of(context).size.height * .7,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
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
                hintText: "Password", isSecure: true),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .02,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text("Forgot Password",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(
                    color: bgColor,
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .02,
            ),
            const LoginLongButton(text: "Login"),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  .02,
            ),
            Row(
              children: [
                const Expanded(
                    child: Divider(
                      color: bgColor,
                      thickness: 1,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30),
                  child: Text(
                    'OR',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                      color: bgColor,
                    ),
                  ),
                ),
                const Expanded(
                    child: Divider(
                      color: bgColor,
                      thickness: 1,
                    ))
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a Member? ",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                      color: bgColor,
                    )),
                GestureDetector(
                  onTap: () => loginScreenController.notMember(),
                  child: Text(
                    "Register",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                      color: Colors.red,
                    ),
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
