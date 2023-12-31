import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_constants.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../custom_suffix_icon.dart';
import '../reusable_button.dart';
import '../sign_in_page/form_error.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  static List<String> errors = [];

  late String email;

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue!,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: AppStrings.email,
              hintText: AppStrings.enterEmail,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                icon: AppAssets.mail,
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: AppStrings.kEmailNullError);
              } else if (AppConstants.emailValidatorRegExp.hasMatch(value)) {
                removeError(error: AppStrings.kInvalidEmailError);
              }

              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: AppStrings.kEmailNullError);

                return "";
              } else if (!AppConstants.emailValidatorRegExp.hasMatch(value)) {
                addError(error: AppStrings.kInvalidEmailError);

                return "";
              }

              return null;
            },
          ),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          FormError(
            formErrors: errors,
          ),
          SizedBox(
            height: AppSizeConfig.screenHeight * 0.1,
          ),
          ReusableButton(
            text: AppStrings.continueText,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                // do whatever you want
                Navigator.pushNamed(context, "/confirmPasswordPage");
              }
            },
          ),
        ],
      ),
    );
  }
}
