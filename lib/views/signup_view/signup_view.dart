import 'package:flutter/material.dart';
import 'package:hospital/consts/consts.dart';
import 'package:hospital/consts/fonts.dart';
import 'package:hospital/consts/images.dart';
import 'package:hospital/res/component/custom_button.dart';
import 'package:hospital/res/component/custom_textfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
                    title: AppStrings.signupNow,
                    size: AppSizes.size16,
                    alignment: TextAlign.center),
              ],
            ),
            30.heightBox,
            Expanded(
                child: Form(
                    child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(
                    hint: AppStrings.fullname,
                  ),
                  10.heightBox,
                  CustomTextField(
                    hint: AppStrings.email,
                  ),
                  10.heightBox,
                  CustomTextField(
                    hint: AppStrings.password,
                  ),
                  20.heightBox,
                  CustomButtom(
                    buttonText: AppStrings.signup,
                    onTap: () {},
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppStyles.normal(title: AppStrings.alreadyHaveAccount),
                      8.widthBox,
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: AppStyles.bold(
                            title: AppStrings.login,
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
