import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_title.dart';
import 'package:seller_app/widgets/app_bar/appbar_title_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.h,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 18.v),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: AssetImage(
                    ImageConstant.imgProfile,
                  ),
                  width: 60.h,
                ),
              ),
              Form(
                key: _formKey,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 23.v),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User Name",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 4.v),
                        _buildUserName(context),
                        SizedBox(height: 9.v),
                        Text(
                          "Email",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildEmail(context),
                        SizedBox(height: 10.v),
                        Text(
                          "Password",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 4.v),
                        _buildPassword(context),
                        SizedBox(height: 9.v),
                        Text(
                          "Confirm  Password",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildConfirmPassword(context),
                        SizedBox(height: 9.v),
                        Text(
                          "Mobile",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildMobileNo(context),
                        SizedBox(height: 10.v),
                        Text(
                          "Address",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildAddress(context),
                        SizedBox(height: 9.v),
                        Text(
                          "Pincode",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5.v),
                        _buildPincode(context),
                        SizedBox(height: 25.v),
                        _buildSignUpButton(context),
                        SizedBox(height: 12.v),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Already have an account? ",
                                  style:
                                      CustomTextStyles.bodySmallErrorContainer,
                                ),
                                WidgetSpan(
                                  child: GestureDetector(
                                    child: Text(
                                      'Login',
                                      style: CustomTextStyles
                                          .bodyMediumSofiaProPrimary14,
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, AppRoutes.loginScreen);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 108.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 36.h),
                            decoration: AppDecoration.outlineIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 53.v,
      leadingWidth: 215.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEllipse12633x50,
        margin: EdgeInsets.only(
          right: 165.h,
          bottom: 20.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEllipse12830x62,
          margin: EdgeInsets.only(bottom: 23.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      hintText: "Name",
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Name@gmail.com",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 14.v, 21.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          height: 12.v,
          width: 17.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
      controller: confirmPasswordController,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 14.v, 21.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup,
          height: 12.v,
          width: 17.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildMobileNo(BuildContext context) {
    return CustomTextFormField(
      controller: mobileNoController,
      hintText: "1234567890",
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
      controller: addressController,
      hintText: "abcde abcde ",
    );
  }

  /// Section Widget
  Widget _buildPincode(BuildContext context) {
    return CustomTextFormField(
      controller: pincodeController,
      hintText: "123454",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "SIGN UP",
      margin: EdgeInsets.symmetric(horizontal: 36.h),
      buttonStyle: CustomButtonStyles.outlineIndigo,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
}
