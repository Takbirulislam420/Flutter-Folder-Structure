import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_talent_agency/app/core/const/app_strings.dart';
import 'package:top_talent_agency/app/core/validators/validators.dart';
import 'package:top_talent_agency/features/common/widgets/custom_elevated_button.dart';
import 'package:top_talent_agency/features/common/widgets/custom_text_form_field.dart';
import 'package:top_talent_agency/features/common/widgets/logo_svg.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40.h),
            // LOGO
            LogoSvg(),
            SizedBox(height: 100.h),
            // CONTENT AREA
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 50.h),
                          Center(
                            child: Text(
                              AppStrings.forgotPassword,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              AppStrings.forgotPasswordDes,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 30.h),
                          CustomTextFormField(
                            controller: _newPasswordController,
                            hintText: AppStrings.newPasswordHint,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              return Validators.password(
                                value: value,
                                emptyError: AppStrings.newPasswordError,
                              );
                            },
                          ),
                          SizedBox(height: 8.h),
                          CustomTextFormField(
                            controller: _confirmPasswordController,
                            hintText: AppStrings.retypePasswordHint,
                            keyboardType: TextInputType.text,
                            isPassword: true,
                            validator: (value) {
                              return Validators.password(
                                value: value,
                                emptyError: AppStrings.retypePasswordError,
                                matchValue: _newPasswordController.text,
                                matchError: "Passwords do not match",
                              );
                            },
                          ),
                          SizedBox(height: 20.h),
                          CustomElevatedButton(
                            text: AppStrings.sendCodeButton,
                            onPressed: _onPressedSignInButton,
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onPressedSignInButton() {
    if (_formKey.currentState!.validate()) {
      // All fields are valid
      print("New Password: ${_newPasswordController.text}");
      print("Confirm Password: ${_confirmPasswordController.text}");
    } else {
      print("Form not valid");
    }
    //ToastUtil.info(context, "Saved!");
    //ShowFlutterToast.show("Login successful");
  }
}
