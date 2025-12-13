import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_talent_agency/app/core/const/app_strings.dart';
import 'package:top_talent_agency/features/common/widgets/custom_elevated_button.dart';
import 'package:top_talent_agency/features/common/widgets/custom_text_form_field.dart';
import 'package:top_talent_agency/features/common/widgets/logo_svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  int _selectedRole = 0;
  bool _rememberMe = false;

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
                  width: double.infinity, // Full width of parent
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ), // Responsive horizontal padding
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
                              style: TextTheme.of(context).titleSmall,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              AppStrings.forgotPasswordDes,
                              style: TextTheme.of(context).bodySmall,
                            ),
                          ),
                          SizedBox(height: 30.h),
                          // 2. Email Input
                          Text(
                            AppStrings.emailLabel,
                            style: TextTheme.of(context).labelLarge,
                          ),
                          SizedBox(height: 8.h),
                          CustomTextFormField(
                            controller: _emailController,
                            hintText: AppStrings.emailHint,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your email";
                              }
                              if (!RegExp(
                                r"^[\w-\.]+@([\w-]+\.)+[\w]{2,4}",
                              ).hasMatch(value)) {
                                return "Enter a valid email";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20.h),
                          // 6. Sign In Button
                          CustomElevatedButton(
                            text: AppStrings.signInButton,
                            onPressed: _onPressedSignInButton,
                          ),
                          // Bottom spacing
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
    _emailController.dispose();
    super.dispose();
  }

  void _onPressedSignInButton() {
    if (_formKey.currentState!.validate()) {
      // All fields are valid
      print("Email: ${_emailController.text}");
    } else {
      // Validation failed
      print("Form not valid");
    }
  }
}
