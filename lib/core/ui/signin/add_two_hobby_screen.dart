import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
class AddTwoHobbyScreen extends StatefulWidget {
  const AddTwoHobbyScreen({Key? key}) : super(key: key);

  @override
  State<AddTwoHobbyScreen> createState() => _AddTwoHobbyScreenState();
}

class _AddTwoHobbyScreenState extends State<AddTwoHobbyScreen> {
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
                          child: SvgPicture.asset(ImageConstant.backArrow,height: 16,width: 9, fit: BoxFit.cover),),
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
                const SizedBox(height: 29),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(StringConstant.search,style: TextStyles.normalFont,),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                        fillColor: ColorConstant.transparent,
                        filled: true,
                        hintText: StringConstant.searchForHobbies,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: ColorConstant.buttonBorderColor,width: 1),
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      SvgPicture.asset(ImageConstant.crossSvg,height: 24,width: 24,fit: BoxFit.cover)
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(StringConstant.lookingFor,style: TextStyles.normalFont),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    style: TextStyles.regularText(),
                    maxLines: 4,
                    decoration: InputDecoration(
                        fillColor: ColorConstant.transparent,
                        hintText: StringConstant.tookUp,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: ColorConstant.hintTextColor
                            )
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(StringConstant.youHaveChooseTwoHobby,
                  style: TextStyles.regularText(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      const SizedBox(width: 10),
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
                    ],
                  ),
                ),
                const SizedBox(height: 51),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.addThreeHobbyScreen),
                    child: Container(
                      height: 58,width: 311,
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
                        child: Text(StringConstant.save,
                            style: TextStyles.boldText()),
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
