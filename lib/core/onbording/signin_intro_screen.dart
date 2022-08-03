import 'package:flutter/material.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../router.dart';
import '../constant/color_constant.dart';
import '../constant/image_constant.dart';
import '../constant/string_constant.dart';



class SignInIntroScreen extends StatefulWidget {
  const SignInIntroScreen({Key? key}) : super(key: key);

  @override
  State<SignInIntroScreen> createState() => _SignInIntroScreenState();
}

class _SignInIntroScreenState extends State<SignInIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 551),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Text(
                        StringConstant.whatEver,
                        textAlign: TextAlign.center,
                        style: TextStyles.boldText(
                          fontWeight: FontWeight.w500,
                          color: ColorConstant.textColor
                        )),
                  ),
                  const SizedBox(height: 29),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.signUpAbout),
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
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text(StringConstant.createAccount,
                        style: TextStyles.boldText()
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 17),
                  InkWell(
                   onTap: () => Navigator.pushNamed(context,  Routes.signInScreen),
                    child: Text(StringConstant.signIn,
                      style: TextStyles.boldText(color: ColorConstant.navyBlue)),
                  )
                ],
              ),
            ),
            SizedBox(height: 498,width: double.infinity,
              child: Image.asset(ImageConstant.backGround,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
    
            Positioned(
                top: 210,
                left: -37,
                child: Image.asset(ImageConstant.buddie,
                  height: 253,
                  width: 450,
                ))
          ],
        ),
      ),
    );
  }
}
