import 'package:flutter/material.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';
import 'package:premium_account_buddee/core/ui/signin/signup_about.dart';

import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/validator.dart';
import '../../constant/web_view_screen.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 48),
              child: Form(key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(onTap: () {
                          Navigator.pop(context);
                        },
                          child: Image.asset(ImageConstant.shape,
                          color: ColorConstant.buttonBorderColor,
                          ),
                        ),
                        SizedBox()
                      ],
                    ),
                    SizedBox(height: 25),
                    Center(
                      child: Text(StringConstant.helloAgain,
                      style: TextStyles.semiBoldText()
                      ),
                    ),
                    SizedBox(height: 8),
                    Center(
                      child: Text(StringConstant.signInToYourAccount,
                      style: TextStyles.mediumText()
                      ),
                    ),
                    SizedBox(height: 34),
                    Text(StringConstant.emailAddress,
                    style: TextStyles.regularText()
                    ),
                    SizedBox(height: 8),
                    SizedBox(height: 48, width: 311,
                      child: TextFormField(
                        validator: Validator.validateUserEmailAddress,
                        decoration: InputDecoration(
                          hintText: StringConstant.gmailFormat,
                          hintStyle: TextStyles.regularText(color: ColorConstant.gray),
                          filled: true,
                          fillColor: ColorConstant.transparent,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: ColorConstant.textFieldBorderColor)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    Text(StringConstant.password,
                        style: TextStyles.regularText()
                    ),
                    SizedBox(height: 8),
                    SizedBox(height: 48, width: 311,
                      child: TextFormField(
                        validator: Validator.validatePasswordAddress,
                        decoration: InputDecoration(
                          hintText: StringConstant.passwordFormat,
                          hintStyle: TextStyles.regularText(color: ColorConstant.gray),
                          filled: true,
                          fillColor: ColorConstant.transparent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: ColorConstant.textFieldBorderColor)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    Row(
                      children: [
                        SizedBox(),
                        Spacer(),
                        Text(StringConstant.forgetPassword,
                        style: TextStyles.lightText(isUnderline: true),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    InkWell(
                      onTap: () {
                        if(_formKey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpAbout()));
                        }
                      },
                      child: Container(
                        height: 58,width: 311,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorConstant.buttonColor
                        ),
                        child: Center(
                          child: Text(StringConstant.signIn,
                          style: TextStyles.boldText()),
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    Center(
                      child: Text('..................................  Or with  .......................................',
                      style: TextStyles.lightText(),
                      ),
                    ),
                    SizedBox(height: 24),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewScreen(url: 'https://www.google.co.in/')));
                      },
                      child: Container(
                        height: 58,width: 311,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: ColorConstant.buttonBorderColor),
                          color: ColorConstant.transparent
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImageConstant.google,height: 24,width: 24,fit: BoxFit.cover,),
                            SizedBox(width: 8),
                            Text(StringConstant.signWithGoogle,
                            style: TextStyles.semiBoldText(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewScreen(url: 'https://www.facebook.com/',)));
                      },
                      child: Container(
                        height: 58,width: 311,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: ColorConstant.buttonBorderColor),
                            color: ColorConstant.transparent
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImageConstant.facebook,height: 24,width: 24,fit: BoxFit.cover,),
                            SizedBox(width: 8),
                            Text(StringConstant.signWithFacebook,
                              style: TextStyles.semiBoldText(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(StringConstant.donNotHaveAccount,
                        style: TextStyles.lightText(),),
                        Text(StringConstant.signUp,
                        style: TextStyles.lightText(color: ColorConstant.containerColor,isUnderline: true),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            )),
      ),
    );
  }
}
