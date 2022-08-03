import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';
import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/validator.dart';
import '../../constant/web_view_screen.dart';
import 'package:dotted_line/dotted_line.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(ImageConstant.backArrow,
                            height: 16, width: 9, fit: BoxFit.cover),
                      ),
                      const SizedBox()
                    ],
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Text(StringConstant.helloAgain,
                        style: TextStyles.semiBoldText()),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(StringConstant.signInToYourAccount,
                        style: TextStyles.mediumText()),
                  ),
                  const SizedBox(height: 34),
                  Text(StringConstant.emailAddress,
                      style: TextStyles.regularText()),
                  const SizedBox(height: 8),
                  TextFormField(
                    validator: Validator.validateUserEmailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                      hintText: StringConstant.gmailFormat,
                      hintStyle: TextStyles.regularText(
                          color: ColorConstant.gray, fontSize: 16),
                      filled: true,
                      fillColor: ColorConstant.transparent,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: ColorConstant.textFieldBorderColor)),
                    ),
                  ),
                  const SizedBox(height: 21),
                  Text(StringConstant.password,
                      style: TextStyles.regularText()),
                  const SizedBox(height: 8),
                  TextFormField(
                    validator: Validator.validatePasswordAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                      hintText: StringConstant.passwordFormat,
                      hintStyle:
                          TextStyles.regularText(color: ColorConstant.gray),
                      filled: true,
                      fillColor: ColorConstant.transparent,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: ColorConstant.textFieldBorderColor)),
                    ),
                  ),
                  const SizedBox(height: 21),
                  Row(
                    children: [
                      const SizedBox(),
                      const Spacer(),
                      Text(
                        StringConstant.forgetPassword,
                        style: TextStyles.lightText(isUnderline: true),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(
                            context, Routes.bottomNavigatorBarScreen);
                      }
                    },
                    child: Container(
                      height: 58,
                      width: 311,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              ColorConstant.buttonColor1,
                              ColorConstant.buttonColor2
                            ]
                        ),
                          borderRadius: BorderRadius.circular(30),
                          ),
                      child: Center(
                        child: Text(StringConstant.signIn,
                            style: TextStyles.boldText()),
                      ),
                    ),
                  ),
                  const SizedBox(height: 21),
                  Row(
                    children: [
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: 128,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashGapLength: 4.0,
                        dashColor: ColorConstant.gray,
                        dashGapColor: ColorConstant.transparent,
                      ),
                      Text(
                        StringConstant.orWith,
                        style: TextStyles.lightText(),
                      ),
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: 128,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashGapLength: 4.0,
                        dashColor: ColorConstant.gray,
                        dashGapColor: ColorConstant.transparent,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WebViewScreen(
                                  url: 'https://www.google.co.in/')));
                    },
                    child: Container(
                      height: 58,
                      width: 311,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: ColorConstant.buttonBorderColor),
                          color: ColorConstant.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            ImageConstant.googleIconSvg,
                            height: 24,
                            width: 24,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            StringConstant.signWithGoogle,
                            style: TextStyles.semiBoldText(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WebViewScreen(
                                    url: 'https://www.facebook.com/',
                                  )));
                    },
                    child: Container(
                      height: 58,
                      width: 311,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: ColorConstant.buttonBorderColor),
                          color: ColorConstant.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageConstant.facebook,
                            height: 24,
                            width: 24,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            StringConstant.signWithFacebook,
                            style: TextStyles.semiBoldText(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, Routes.signUpAbout),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          StringConstant.donNotHaveAccount,
                          style: TextStyles.lightText(),
                        ),
                        Text(
                          StringConstant.signUp,
                          style: TextStyles.lightText(
                              color: ColorConstant.containerColor,
                              isUnderline: true),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
