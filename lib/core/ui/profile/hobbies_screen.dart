import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
class HobbiesScreen extends StatefulWidget {
  const HobbiesScreen({Key? key}) : super(key: key);

  @override
  State<HobbiesScreen> createState() => _HobbiesScreenState();
}

class _HobbiesScreenState extends State<HobbiesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.fromLTRB(24, 47, 24, 0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },
                        child: SvgPicture.asset(ImageConstant.backArrow,height: 15.86,width: 8.89,fit: BoxFit.cover,)),
                    const SizedBox(width: 30),
                    Text(StringConstant.myProfile,style: TextStyles.menuTextFont,),
                    const Spacer(),
                    SizedBox(),
                  ],
                ),
                const SizedBox(height: 36),
                Center(
                  child: Text(StringConstant.myHobbies,
                      style: TextStyles.headTextFont
                  ),
                ),
                const SizedBox(height: 36),
                Center(
                  child: Text('You have 1 hobby',
                    style: TextStyles.regularText(
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(9, 4, 10, 4),
                      height: 32,width: 152,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.containerColor
                      ),
                      child: Text(StringConstant.badminton,style: TextStyles.tabTextFont),
                    ),
                    Spacer(),
                    SvgPicture.asset(ImageConstant.editSvg,height: 24,width: 24,fit: BoxFit.cover),
                    // Image.asset(ImageConstant.edit,width: 19,height: 19.38,fit: BoxFit.cover),
                    SizedBox(width: 13),
                    SvgPicture.asset(ImageConstant.crossSvg,height: 24,width: 24,fit: BoxFit.cover)
                  ],
                ),
                SizedBox(height: 16),
                Text(StringConstant.intermediate,style: TextStyles.regularText(),),
                Spacer(),
                InkWell(
                  // onTap: () => Navigator.pushNamed(context, Routes.multiSelectedHobbyScreen),
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
                SizedBox(height: 20),
                InkWell(
                  // onTap: () => Navigator.pushNamed(context, Routes.allAddHobbyScreen),
                  child: Container(
                    height: 58,width: 311,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorConstant.buttonColor
                    ),
                    child: Center(
                      child: Text(StringConstant.save,
                        style: TextStyles.boldText(),
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
