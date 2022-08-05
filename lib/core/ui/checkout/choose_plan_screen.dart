import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/color_constant.dart';
import 'package:premium_account_buddee/core/constant/string_constant.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../../router.dart';
import '../../constant/image_constant.dart';

class ChoosePlanScreen extends StatefulWidget {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  State<ChoosePlanScreen> createState() => _ChoosePlanScreenState();
}

class _ChoosePlanScreenState extends State<ChoosePlanScreen> {

  int currentIndex = 0;
  final List item = [
    {
      'head': StringConstant.premiumUpper,
      'amount': '\$${20}',
      'perMonth': StringConstant.perMonth,
      'save': StringConstant.saveUpTo,
      'unlimited': StringConstant.unlimitedLikes,
      'unlimitedHobbies': StringConstant.unlimitedHobbiesListed,
      'changeLocation': StringConstant.changeYourLocation,
      'seeProfile': StringConstant.seeProfilesThatHave,
      'seeIfYour': StringConstant.seeIfYourMessagesHaveBeenRead,
    },
    {
      'head': StringConstant.goldUpper,
      'amount': '\$${50}',
      'perMonth': StringConstant.perMonth,
      'save': StringConstant.saveUpTo,
      'unlimited': StringConstant.unlimitedLikes,
      'unlimitedHobbies': StringConstant.unlimitedHobbiesListed,
      'changeLocation': StringConstant.changeYourLocation,
      'seeProfile': StringConstant.seeProfilesThatHave,
      'seeIfYour': StringConstant.seeIfYourMessagesHaveBeenRead,
    },
    {
      'head': StringConstant.platinumUpper,
      'amount': '\$${100}',
      'perMonth': StringConstant.perMonth,
      'save': StringConstant.saveUpTo,
      'unlimited': StringConstant.unlimitedLikes,
      'unlimitedHobbies': StringConstant.unlimitedHobbiesListed,
      'changeLocation': StringConstant.changeYourLocation,
      'seeProfile': StringConstant.seeProfilesThatHave,
      'seeIfYour': StringConstant.seeIfYourMessagesHaveBeenRead,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
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
                    const Spacer(),
                    const SizedBox(),
                  ],
                ),
                Text(
                  StringConstant.getPremium,
                  style: TextStyles.headTextFont,
                ),
                SizedBox(height: 4),
                Text(
                  StringConstant.chooseYourPlan,
                  style: TextStyles.mediumText(fontSize: 16),
                ),
                SizedBox(height: 16),
                CarouselSlider(
                  items: item.map((items) {
                    return Builder(builder: (BuildContext context) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: ColorConstant.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  items['save'],
                                  style: TextStyles.boldText(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      color: ColorConstant.saveColor),
                                ),
                                SizedBox(height: 24),
                                Text(
                                  items['unlimited'],
                                  style: TextStyles.regularText(),
                                ),
                                Divider(
                                  indent: 8,
                                  endIndent: 8,
                                  thickness: 1,
                                  color: ColorConstant.hintTextColor,
                                ),
                                Text(
                                  items['unlimitedHobbies'],
                                  style: TextStyles.regularText(),
                                ),
                                Divider(
                                  indent: 8,
                                  endIndent: 8,
                                  thickness: 1,
                                  color: ColorConstant.hintTextColor,
                                ),
                                Text(
                                  items['changeLocation'],
                                  style: TextStyles.regularText(),
                                  textAlign: TextAlign.center,
                                ),
                                Divider(
                                  indent: 8,
                                  endIndent: 8,
                                  thickness: 1,
                                  color: ColorConstant.hintTextColor,
                                ),
                                Text(
                                  items['seeProfile'],
                                  style: TextStyles.regularText(),
                                  textAlign: TextAlign.center,
                                ),
                                Divider(
                                  indent: 8,
                                  endIndent: 8,
                                  thickness: 1,
                                  color: ColorConstant.hintTextColor,
                                ),
                                Text(
                                  items['seeIfYour'],
                                  style: TextStyles.regularText(),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 46),
                              ],
                            ),
                          ),
                          Container(
                            height: 132,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    ColorConstant.backGroundColor1,
                                    ColorConstant.backGroundColor2
                                  ]),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 25),
                              child: Column(
                                children: [
                                  Text(
                                    items['head'],
                                    style: TextStyles.boldText(
                                        fontWeight: FontWeight.w800,
                                        color:
                                        ColorConstant.buttonBorderColor),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    items['amount'],
                                    style: TextStyles.boldText(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w500,
                                        color:
                                        ColorConstant.buttonBorderColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                          top: 111,
                          left: 100,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: ColorConstant.hintTextColor,
                                    width: 1),
                                color: ColorConstant.white),
                            child: Center(
                                child: Text(
                              items['perMonth'],
                              style: TextStyles.regularText(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstant.perMonthColor),
                                )),
                          )),
                        ],
                      );
                    });
                  }).toList(),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                      },
                    height: 460,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < item.length; i++)
                      buildIndicator(currentIndex == i)
                  ],
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, Routes.paymentScreen),
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
                      child: Text(StringConstant.choosePlan,
                          style: TextStyles.boldText()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
  Widget buildIndicator(bool currentIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: currentIndex ? ColorConstant.black : ColorConstant.gray,
        ),
      ),
    );
  }
}
