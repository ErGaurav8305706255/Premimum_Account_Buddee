import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
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
                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(onTap: () {
                            Navigator.pop(context);
                          },
                              child: Image.asset(ImageConstant.shape,height: 16,width: 9,fit: BoxFit.cover,)),
                          SizedBox(width: 20),
                          Text(StringConstant.myProfile,
                              style: TextStyles.menuTextFont),
                          Spacer(),
                          Image.asset(ImageConstant.close,height: 24,width: 24,fit: BoxFit.cover,)
                        ],
                      ),
                      SizedBox(height: 170),
                      Row(
                        children: [
                          Text(StringConstant.information,
                              style: TextStyles.menuTextFont
                          ),
                          Spacer(),
                          InkWell(
                              onTap: () => Navigator.pushNamed(context, Routes.informationScreen),
                              child: Image.asset(ImageConstant.button,height: 35,width: 35,fit: BoxFit.cover,))
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        children: [
                          Text(StringConstant.hobbies,
                              style: TextStyles.menuTextFont
                          ),
                          Spacer(),
                          InkWell(onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => HobbiesScreen()));
                          },
                              child: Image.asset(ImageConstant.button,height: 35,width: 35,fit: BoxFit.cover,))
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        children: [
                          Text(StringConstant.searchSettings,
                              style: TextStyles.menuTextFont
                          ),
                          Spacer(),
                          InkWell(onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) =>  SearchSettingScreen()));
                          },
                              child:
                              Image.asset(ImageConstant.button,height: 35,width: 35,fit: BoxFit.cover,))
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        children: [
                          Text(StringConstant.privacyPolicy,
                              style: TextStyles.menuTextFont
                          ),
                          Spacer(),
                          InkWell(onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()));
                          },
                              child:
                              Image.asset(ImageConstant.button,height: 35,width: 35,fit: BoxFit.cover,))
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
