import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_talent_agency/app/core/const/app_strings.dart';
import 'package:top_talent_agency/features/common/widgets/custom_elevated_button.dart';
import 'package:top_talent_agency/features/common/widgets/custom_text_form_field.dart';
import 'package:top_talent_agency/features/common/widgets/logo_svg.dart';
import 'package:top_talent_agency/features/common/widgets/role_option_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            SizedBox(height: 30.h),
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
                          SizedBox(height: 15.h),
                          Center(
                            child: Text(
                              AppStrings.loginTitle,
                              style: TextTheme.of(context).titleSmall,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          // 1. Role Selection (Admin/Manager)
                          _selectOption(),
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
                          // 3. Password Input
                          Text(
                            AppStrings.passwordLabel,
                            style: TextTheme.of(context).labelLarge,
                          ),
                          SizedBox(height: 8.h),
                          CustomTextFormField(
                            controller: _passwordController,
                            hintText: AppStrings.passwordHint,
                            keyboardType: TextInputType.emailAddress,
                            isPassword: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your password";
                              }
                              if (value.length < 6) {
                                return "Password must be at least 6 characters";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15.h),
                          // 5. Remember Me & Forgot Password
                          _remanberAndForgotPass(),
                          SizedBox(height: 40.h),
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
    _passwordController.dispose();
    super.dispose();
  }

  // Select Admin or Manager option
  Widget _selectOption() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RoleOptionWidget(
            title: AppStrings.adminOption,
            value: 0,
            groupValue: _selectedRole,
            onChanged: (value) {
              setState(() {
                _selectedRole = value;
              });
            },
          ),
          RoleOptionWidget(
            title: AppStrings.managerOption,
            value: 1,
            groupValue: _selectedRole,
            onChanged: (value) {
              setState(() {
                _selectedRole = value;
              });
            },
          ),
        ],
      ),
    );
  }

  //  Remember Me & Forgot Password
  Widget _remanberAndForgotPass() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Remember Me Checkbox
        Row(
          children: [
            SizedBox(
              width: 24.0.w,
              height: 24.0.h,
              child: Checkbox(
                value: _rememberMe,
                onChanged: (bool? newValue) {
                  setState(() {
                    _rememberMe = newValue ?? false;
                  });
                },
                activeColor: const Color(0xFF0F1B2C),
                checkColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side: const BorderSide(color: Color(0xFF0F1B2C), width: 1.5),
              ),
            ),
            SizedBox(width: 2.w),
            Text(
              AppStrings.rememberMe,
              style: TextTheme.of(context).bodyMedium,
            ),
          ],
        ),

        // Forgot Password Button
        TextButton(
          onPressed: _onPressedForgotButton,
          child: Text(
            AppStrings.forgotPassword,
            style: TextTheme.of(context).bodyMedium,
          ),
        ),
      ],
    );
  }

  void _onPressedForgotButton() {}
  void _onPressedSignInButton() {
    if (_formKey.currentState!.validate()) {
      // All fields are valid
      print("Email: ${_emailController.text}");
      print("Password: ${_passwordController.text}");
    } else {
      // Validation failed
      print("Form not valid");
    }
  }
}
