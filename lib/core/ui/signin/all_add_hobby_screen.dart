import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';

class AllAddHobbyScreen extends StatefulWidget {
  const AllAddHobbyScreen({Key? key}) : super(key: key);

  @override
  State<AllAddHobbyScreen> createState() => _AllAddHobbyScreenState();
}

class _AllAddHobbyScreenState extends State<AllAddHobbyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 47, 24, 0),
                  child: Row(
                    children: [
                      InkWell(onTap: () {
                        Navigator.pop(context);
                      },
                          child: SvgPicture.asset(ImageConstant.backArrow,height: 15.86,width: 8.89,fit: BoxFit.cover,)),
                      const Spacer(),
                      const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(height: 36),
                Center(
                  child: Text(StringConstant.addHobby,
                      style: TextStyles.headTextFont
                  ),
                ),
                const SizedBox(height: 36),
                Center(
                  child: Text(StringConstant.youHaveThreeHobbies,
                    style: TextStyles.regularText(
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(9, 4, 10, 4),
                          height: 32,width: 152,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.containerColor
                          ),
                          child: Row(
                            children: [
                              Text(StringConstant.badminton,style: TextStyles.tabTextFont),
                              Spacer(),
                              SvgPicture.asset(ImageConstant.crossSvg,height: 24,width: 24,fit: BoxFit.cover)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(9, 4, 10, 4),
                          height: 32,width: 152,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.containerColor
                          ),
                          child: Row(
                            children: [
                              Text(StringConstant.photography,style: TextStyles.tabTextFont),
                              Spacer(),
                              SvgPicture.asset(ImageConstant.crossSvg,height: 24,width: 24,fit: BoxFit.cover)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(9, 4, 10, 4),
                        height: 32,width: 145,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.containerColor
                        ),
                        child: Row(
                          children: [
                            Text(StringConstant.surfing,style: TextStyles.tabTextFont),
                            Spacer(),
                            SvgPicture.asset(ImageConstant.crossSvg,height: 24,width: 24,fit: BoxFit.cover)
                          ],
                        ),
                      ),
                      SizedBox(width: 7),
                      SizedBox(),
                    ],
                  ),
                ),

                SizedBox(height: 340),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.addPhotoScreen),
                    child: Container(
                      height: 58,width: 311,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: ColorConstant.buttonColor,width: 1.5),
                          color: ColorConstant.transparent
                      ),
                      child: Center(
                        child: Text(StringConstant.nextStep,
                          style: TextStyles.semiBoldText(fontSize: 16,fontWeight: FontWeight.w600,color: ColorConstant.buttonColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
