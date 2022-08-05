import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:premium_account_buddee/core/constant/image_constant.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../constant/color_constant.dart';
import '../../constant/string_constant.dart';
class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(onTap: () {
                        Navigator.pop(context);
                      },
                          child:  SvgPicture.asset(ImageConstant.backArrow,height: 16,width: 9, fit: BoxFit.cover),),
                      const SizedBox(width: 30),
                      Text(StringConstant.myProfile,
                        style: TextStyles.menuTextFont
                      ),
                      const Spacer(),
                      const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: Text(StringConstant.information,
                      style: TextStyles.headTextFont)
                  ),
                  const SizedBox(height: 15),
                  Text(StringConstant.name,
                      style: TextStyles.regularText()
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                        hintText: StringConstant.name,
                        filled: true,
                        hintStyle: TextStyles.regularText(),
                        fillColor: ColorConstant.transparent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: ColorConstant.gray,width: 1
                            )
                        )
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(StringConstant.dob,
                      style: TextStyles.regularText()
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                        hintText: StringConstant.dob,
                        filled: true,
                        hintStyle: TextStyles.regularText(),
                        fillColor: ColorConstant.transparent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: ColorConstant.gray,width: 1
                            )
                        )
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(StringConstant.gender,
                      style: TextStyles.regularText()
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorConstant.gray,width: 1)
                    ),
                    child: TabBar(
                        indicator: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                ColorConstant.backGroundColor1,
                                ColorConstant.backGroundColor2
                              ]
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        indicatorColor: ColorConstant.transparent,
                        labelColor: ColorConstant.textColor,
                        labelStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: [
                          Tab(
                            child: Row(
                              children: [
                                SvgPicture.asset(ImageConstant.maleSvg,height: 32,width: 30, fit: BoxFit.cover),
                                Text(StringConstant.male)
                              ],
                            ),
                          ),
                          Tab(child: Row(
                            children: [
                              SvgPicture.asset(ImageConstant.femaleSvg,height: 32,width: 30, fit: BoxFit.cover),
                              Text(StringConstant.female)
                            ],
                          ),)
                        ]),
                  ),

                  const SizedBox(height: 173),
                  InkWell(onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => MainProfileScreen()));
                  },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              ColorConstant.buttonColor1,
                              ColorConstant.buttonColor2
                            ]
                        ),
                          borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(child: Text(StringConstant.save,
                        style: TextStyle(
                            color: ColorConstant.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),)),
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
