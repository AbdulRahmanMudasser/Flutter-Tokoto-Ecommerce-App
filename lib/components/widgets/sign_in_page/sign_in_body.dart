import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_in_page/sign_in_form.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_in_page/social_card.dart';
import 'package:flutter_e_commerce_app/config/app_assets.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';

import 'no_account_text.dart';

class SignInPageBody extends StatelessWidget {
  const SignInPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.04,
                ),
                Text(
                  AppStrings.welcomeBack,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppSizeConfig.getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: AppSizeConfig.getProportionateScreenHeight(10),
                ),
                const Text(
                  AppStrings.signInWithEmailPassword,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.08,
                ),
                const SignInForm(),
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: AppAssets.google,
                      onTap: () {},
                    ),
                    SocialCard(
                      icon: AppAssets.facebook,
                      onTap: () {},
                    ),
                    SocialCard(
                      icon: AppAssets.twitter,
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizeConfig.getProportionateScreenHeight(20),
                ),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}