import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
class AddThreeHobbyScreen extends StatefulWidget {
  const AddThreeHobbyScreen({Key? key}) : super(key: key);

  @override
  State<AddThreeHobbyScreen> createState() => _AddThreeHobbyScreenState();
}

class _AddThreeHobbyScreenState extends State<AddThreeHobbyScreen> {
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
                            child: SvgPicture.asset(ImageConstant.backArrow,height: 16,width: 9, fit: BoxFit.cover)),
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
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(9, 4, 10, 4),
                          height: 32,width: 152,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  ColorConstant.backGroundColor1,
                                  ColorConstant.backGroundColor2
                                ]
                            ),
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(StringConstant.badminton,style: TextStyles.tabTextFont),
                        ),
                        const Spacer(),
                        SvgPicture.asset(ImageConstant.editSvg,height: 24,width: 24,fit: BoxFit.cover),
                        // Image.asset(ImageConstant.edit,width: 19,height: 19.38,fit: BoxFit.cover),
                        const SizedBox(width: 13),
                        SvgPicture.asset(ImageConstant.crossSvg,height: 24,width: 24,fit: BoxFit.cover)
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(StringConstant.intermediate,style: TextStyles.regularText(),),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(9, 4, 10, 4),
                          height: 32,width: 152,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  ColorConstant.backGroundColor1,
                                  ColorConstant.backGroundColor2
                                ]
                            ),
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(StringConstant.photography,style: TextStyles.tabTextFont),
                        ),
                        const Spacer(),
                        SvgPicture.asset(ImageConstant.editSvg,height: 24,width: 24,fit: BoxFit.cover),
                        // Image.asset(ImageConstant.edit,width: 19,height: 19.38,fit: BoxFit.cover),
                        const SizedBox(width: 13),
                        SvgPicture.asset(ImageConstant.crossSvg,height: 24,width: 24,fit: BoxFit.cover)
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(StringConstant.loveLandscape,style: TextStyles.regularText(),),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(9, 4, 10, 4),
                          height: 32,width: 152,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  ColorConstant.backGroundColor1,
                                  ColorConstant.backGroundColor2
                                ]
                            ),
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(StringConstant.surfing,style: TextStyles.tabTextFont),
                        ),
                        const Spacer(),
                        SvgPicture.asset(ImageConstant.editSvg,height: 24,width: 24,fit: BoxFit.cover),
                        // Image.asset(ImageConstant.edit,width: 19,height: 19.38,fit: BoxFit.cover),
                        const SizedBox(width: 13),
                        SvgPicture.asset(ImageConstant.crossSvg,height: 24,width: 24,fit: BoxFit.cover)
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(StringConstant.tookUp,style: TextStyles.regularText(),),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(context, Routes.multiSelectedHobbyScreen),
                      child: Container(
                        height: 58,width: 311,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: ColorConstant.navyBlue,width: 1.5),
                          color: ColorConstant.transparent,
                        ),
                        child: Center(
                          child: Text(StringConstant.addNewHobby,
                            style: TextStyles.semiBoldText(fontSize: 16,fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(context, Routes.allAddHobbyScreen),
                      child: Container(
                        height: 58,width: 311,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: ColorConstant.buttonColor2,width: 1.5),
                            color: ColorConstant.transparent
                        ),
                        child: Center(
                          child: Text(StringConstant.nextStep,
                            style: TextStyles.semiBoldText(fontSize: 16,fontWeight: FontWeight.w600,color: ColorConstant.buttonColor2),
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
