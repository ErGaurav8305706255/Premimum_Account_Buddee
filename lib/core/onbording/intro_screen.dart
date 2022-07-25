import 'package:flutter/material.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../constant/color_constant.dart';
import '../constant/image_constant.dart';
import '../constant/string_constant.dart';
import '../ui/signin/signin_screen.dart';



class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 551),
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
                      SizedBox(height: 29),
                      Container(
                        height: 58,
                        width: 311,
                        decoration: BoxDecoration(
                          color: ColorConstant.buttonColor,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text(StringConstant.createAccount,
                          style: TextStyles.boldText()
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                        },
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
      ),
    );
  }
}
