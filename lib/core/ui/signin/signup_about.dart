import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
class SignUpAbout extends StatefulWidget {
  const SignUpAbout({Key? key}) : super(key: key);

  @override
  State<SignUpAbout> createState() => _SignUpAboutState();
}

class _SignUpAboutState extends State<SignUpAbout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 47),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(onTap: () {
                        Navigator.pop(context);
                      },
                          child: SvgPicture.asset(ImageConstant.backArrow,height: 16,width: 9, fit: BoxFit.cover)),
                      const Spacer(),
                      const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 36),
                  Center(
                    child: Text(StringConstant.tellUs,
                      style: TextStyles.semiBoldText(
                        color: ColorConstant.buttonBorderColor,
                        fontSize: 28
                      )
                    ),
                  ),
                  const SizedBox(height: 28),
                  Text(StringConstant.name,
                      style: TextStyles.normalFont
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                        hintText: StringConstant.name,
                        filled: true,
                        hintStyle: TextStyles.normalFont,
                        fillColor: ColorConstant.transparent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: ColorConstant.buttonBorderColor,width: 1
                            )
                        )
                    ),
                  ),
                  const SizedBox(height: 21),
                  Text(StringConstant.dob,
                      style: TextStyles.normalFont,
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                        hintText: StringConstant.dob,
                        filled: true,
                        hintStyle: TextStyles.normalFont,
                        fillColor: ColorConstant.transparent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: ColorConstant.buttonBorderColor,width: 1
                            )
                        )
                    ),
                  ),
                  const SizedBox(height: 21),
                  Text(StringConstant.gender,
                      style: TextStyles.normalFont
                  ),
                  const SizedBox(height: 8),
                  Container(height: 58,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorConstant.buttonBorderColor,width: 1)
                    ),
                    child: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.containerColor,
                        ),
                        indicatorColor: ColorConstant.transparent,
                        labelColor: ColorConstant.textColor,
                        labelStyle: TextStyles.tabTextFont,
                        unselectedLabelColor: ColorConstant.gray,

                        tabs: [
                          Tab(
                            child: Row(
                              children: [
                                SvgPicture.asset(ImageConstant.maleSvg,height: 32,width: 30,fit: BoxFit.cover),
                                Text(StringConstant.male)
                              ],
                            ),
                          ),
                          Tab(child: Row(
                            children: [
                              SvgPicture.asset(ImageConstant.femaleSvg,height: 32,width: 30,fit: BoxFit.cover),
                              Text(StringConstant.female)
                            ],
                          ),)
                        ]),
                  ),

                  const SizedBox(height: 200),
                  InkWell(onTap: () => Navigator.pushNamed(context, Routes.addHobbyListSearchScreen),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorConstant.transparent,
                        border: Border.all(color: ColorConstant.buttonColor2,width: 1)
                      ),
                      child: Center(
                          child: Text(StringConstant.nextStep,
                              style: TextStyles.boldText(
                                  color: ColorConstant.buttonColor2,fontSize: 16
                              )
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
