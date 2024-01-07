// ignore_for_file: file_names
import 'package:ecommerce/pages/SignInPage/widgets/arrow_back.dart';
import 'package:ecommerce/pages/SignInPage/widgets/custom_sign_field.dart';
import 'package:ecommerce/pages/SignInPage/widgets/sign_in_button.dart';
import 'package:ecommerce/pages/SignInPage/widgets/sign_in_text.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// this widget is for back to login page.
              ArrowBack(),

              /// this is for sign in page upper text.
              SignInText(),

              /// this is for showing custom field.
              CustomSignField(),

              /// this is for sign in button.
              SignInButton()
            ],
          ),
        ),
      ),
    );
  }
}
