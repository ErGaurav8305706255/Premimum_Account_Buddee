import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../router.dart';
import '../constant/color_constant.dart';
import '../constant/image_constant.dart';
import '../constant/string_constant.dart';
class ProfileIntroScreen extends StatefulWidget {
  const ProfileIntroScreen({Key? key}) : super(key: key);

  @override
  State<ProfileIntroScreen> createState() => _ProfileIntroScreenState();
}

class _ProfileIntroScreenState extends State<ProfileIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 385),
                    Center(
                        child: Text(StringConstant.myHobbies,
                          style: TextStyles.regularText(
                            fontSize: 21,
                            fontWeight: FontWeight.w500
                          ))),
                    SizedBox(height: 20),
                    Container(
                        height: 32,width: 152,
                        decoration: BoxDecoration(
                            color: ColorConstant.containerColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text(StringConstant.badminton,style: TextStyles.tabTextFont,))),
                    SizedBox(height: 24),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.lightBackGroundColor
                        ),
                        child: Text(StringConstant.intermediate)),
                    SizedBox(height: 52),
                    Container(
                        height: 32,width: 152,
                        decoration: BoxDecoration(
                            color: ColorConstant.containerColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text(StringConstant.photography,
                          style: TextStyles.tabTextFont
                        ))),
                    SizedBox(height: 24),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.lightBackGroundColor
                        ),
                        child: Text(StringConstant.intermediate,
                          style: TextStyle(
                            color: ColorConstant.textColor,
                          ),
                        )),
                    SizedBox(height: 52),
                    Container(
                        height: 32,width: 152,
                        decoration: BoxDecoration(
                            color: ColorConstant.containerColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text(StringConstant.gallery,
                          style: TextStyles.tabTextFont
                        ))),
                    SizedBox(height: 24),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.lightBackGroundColor
                        ),
                        child: Text(StringConstant.intermediate,
                          style: TextStyle(
                            color: ColorConstant.textColor,
                          ),
                        )),
                  ],
                ),
              ),
              Arc(
                arcType: ArcType.CONVEX,
                edge: Edge.BOTTOM,
                height: 50,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 32),
                  height: 370,
                  decoration: BoxDecoration(
                    color: ColorConstant.backGroundColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(StringConstant.myProfile,style: TextStyles.regularText(
                            fontSize: 20,fontWeight: FontWeight.w500
                          )),
                          Spacer(),
                          InkWell(onTap: () => Navigator.pushNamed(context, Routes.profileMainScreen),
                              child: SvgPicture.asset(ImageConstant.menuButtonSvg,height: 32,width: 32,fit: BoxFit.cover,))
                        ],
                      ),
                      SizedBox(height: 180),
                      Text(StringConstant.james,
                          style: TextStyles.boldText(
                            fontWeight: FontWeight.w500
                          )),
                      SizedBox(height: 8),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(ImageConstant.locationSvg,height: 15,width: 12,fit: BoxFit.cover,),
                          SizedBox(width: 6),
                          Text(StringConstant.london,
                              style: TextStyles.mediumText(
                                color: ColorConstant.buttonBorderColor
                              )),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                          width: 101,height: 27,
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                              color: ColorConstant.buttonColor,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(ImageConstant.diamondSvg,height: 15,width: 16,fit: BoxFit.cover,),
                              SizedBox(width: 6),
                              Text(StringConstant.premium,style: TextStyles.boldText(
                                fontSize: 14,fontWeight: FontWeight.w400
                              )),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 88,
                  left: 123,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset(ImageConstant.person,
                          fit: BoxFit.cover,
                          width: 130,
                          height: 130))
              ),
              Positioned(
                  top: 186,
                  left: 221,
                  child: InkWell(onTap: () => Navigator.pushNamed(context, Routes.galleryScreen),
                    child: Container(padding: EdgeInsets.all(8),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(color: ColorConstant.buttonBorderColor,
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: SvgPicture.asset(ImageConstant.cameraSvg,height: 13,width: 16,fit: BoxFit.cover),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
