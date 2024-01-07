// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:ecommerce/pages/LoginPage/widgets/custom_text_field.dart';
import 'package:ecommerce/pages/LoginPage/widgets/login_animation.dart';
import 'package:ecommerce/pages/LoginPage/widgets/login_button.dart';
import 'package:ecommerce/pages/LoginPage/widgets/login_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// created this widget for showing animation on top of the login page.
            FadeInDown(child: const LoginAniamtion()),
            const Padding(
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
                bottom: 40,
              ),

              /// created column for showing other widgets.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// this widget represent login text in this page.
                  LoginText(),

                  /// this widget is for custom text field.
                  CustomTextField(),

                  /// this widget is for login button and other bottom contents.
                  LoginButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
