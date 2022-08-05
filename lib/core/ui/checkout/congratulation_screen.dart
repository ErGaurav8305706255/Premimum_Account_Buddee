import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/string_constant.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';
import 'dart:math' as math;
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
class CongratulationScreen extends StatefulWidget {
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  State<CongratulationScreen> createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
            child: Stack(
              children: [
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            ImageConstant.backArrow,
                            height: 15.86,
                            width: 8.89,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(width: 30),
                      Text(StringConstant.explore,style: TextStyles.menuTextFont,),
                      const Spacer(),
                      const SizedBox(),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(StringConstant.congratulations,style: TextStyles.headTextFont,),
                  SizedBox(height: 400),
                  Text(StringConstant.youAreNow,style: TextStyles.regularText(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ), textAlign: TextAlign.center,),
                  SizedBox(height: 40),
                  InkWell(
                    // onTap: () => Navigator.pushNamed(context, Routes.paymentScreen),
                    child: Container(
                      height: 58,
                      width: 311,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              ColorConstant.buttonColor1,
                              ColorConstant.buttonColor2
                            ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(StringConstant.gotoBuddee,
                            style: TextStyles.boldText()),
                      ),
                    ),
                  ),
                ],
              ),
                Positioned(
                  top: 180,left: 95,
                    child: SvgPicture.asset(ImageConstant.cloudSvg,height: 160,width: 100,fit: BoxFit.cover,)),
                Positioned(top: 155,left: 15,
                    child: SvgPicture.asset(ImageConstant.panaSvg,fit: BoxFit.cover,)),
                Positioned(
                    top: 235,left: 125,
                    child: Transform.rotate(
                      angle: - math.pi /10,
                      child: Container(
                        height: 27,width: 101,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                ColorConstant.buttonColor1,
                                ColorConstant.buttonColor2
                              ]),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Row(
                            children: [
                              SvgPicture.asset(ImageConstant.diamondSvg,height: 15,width: 16,fit: BoxFit.cover,),
                              SizedBox(width: 3.5),
                              Text(StringConstant.premium,style: TextStyles.mediumText(
                                color: ColorConstant.white
                              )),
                            ],
                          ),
                        ),
                      ),
                    )),
              ]
            ),
          ),
        ));
  }
}
