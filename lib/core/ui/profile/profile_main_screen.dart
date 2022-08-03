import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/image_constant.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/string_constant.dart';
class ProfileMainScreen extends StatefulWidget {
  const ProfileMainScreen({Key? key}) : super(key: key);

  @override
  State<ProfileMainScreen> createState() => _ProfileMainScreenState();
}

class _ProfileMainScreenState extends State<ProfileMainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstant.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      StringConstant.logout,
                      style: TextStyles.boldText(
                        color: ColorConstant.buttonBorderColor,
                        isUnderline: true
                      )),
                ],
              ),
            ),
            Arc(
              height: 40,
              arcType: ArcType.CONVEX,
              edge: Edge.BOTTOM,
              child: Container(
                height: 600,
                decoration: BoxDecoration(
                    color: ColorConstant.containerColor
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(onTap: () {
                            Navigator.pop(context);
                          },
                              child: SvgPicture.asset(ImageConstant.backArrow,height: 16,width: 9, fit: BoxFit.cover),),
                          const SizedBox(width: 30),
                          Text(StringConstant.myProfile,
                              style: TextStyles.menuTextFont),
                          const Spacer(),
                          SvgPicture.asset(ImageConstant.closeSvg,height: 24,width: 24,fit: BoxFit.cover,)
                        ],
                      ),
                      const SizedBox(height: 170),
                      Row(
                        children: [
                          Text(StringConstant.information,
                              style: TextStyles.menuTextFont
                          ),
                          const Spacer(),
                          InkWell(
                              onTap: () => Navigator.pushNamed(context, Routes.informationScreen),
                              child: SvgPicture.asset(ImageConstant.nxtButtonSvg,height: 35,width: 35,fit: BoxFit.cover,))
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          Text(StringConstant.hobbies,
                              style: TextStyles.menuTextFont
                          ),
                          const Spacer(),
                          InkWell(onTap: () => Navigator.pushNamed(context, Routes.hobbiesScreen),
                              child: SvgPicture.asset(ImageConstant.nxtButtonSvg,height: 35,width: 35,fit: BoxFit.cover,))
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          Text(StringConstant.searchSettings,
                              style: TextStyles.menuTextFont
                          ),
                          const Spacer(),
                          InkWell(onTap: () => Navigator.pushNamed(context, Routes.searchSettingScreen),
                              child: SvgPicture.asset(ImageConstant.nxtButtonSvg,height: 35,width: 35,fit: BoxFit.cover,))
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          Text(StringConstant.privacyPolicy,
                              style: TextStyles.menuTextFont
                          ),
                          const Spacer(),
                          InkWell(onTap: () => Navigator.pushNamed(context, Routes.privacyPolicyScreen),
                              child: SvgPicture.asset(ImageConstant.nxtButtonSvg,height: 35,width: 35,fit: BoxFit.cover,))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
