import 'package:flutter/material.dart';
import 'package:hospital/consts/consts.dart';
import 'package:hospital/consts/fonts.dart';
import 'package:hospital/consts/images.dart';
import 'package:hospital/res/component/custom_button.dart';
import 'package:hospital/res/component/custom_textfield.dart';
import 'package:hospital/views/home_view/home.dart';
import 'package:hospital/views/signup_view/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.logPic,
                  width: 200,
                ),
                10.heightBox,
                AppStyles.bold(
                    title: AppStrings.welcomeBack, size: AppSizes.size18),
                AppStyles.bold(title: AppStrings.weAreExcited),
              ],
            ),
            30.heightBox,
            Expanded(
                child: Form(
                    child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(
                    hint: AppStrings.email,
                  ),
                  10.heightBox,
                  CustomTextField(
                    hint: AppStrings.password,
                  ),
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppStyles.normal(title: AppStrings.forgetPassword),
                  ),
                  20.heightBox,
                  CustomButtom(
                    buttonText: AppStrings.login,
                    onTap: () {
                      Get.to(() => Home());
                    },
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppStyles.normal(title: AppStrings.dontHaveAccount),
                      8.widthBox,
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const SignupView());
                        },
                        child: AppStyles.bold(
                            title: AppStrings.signup,
                            color: AppColors.bgNavColor),
                      ),
                    ],
                  )
                ],
              ),
            )))
          ],
        ),
      ),
    );
  }
}
