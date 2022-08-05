import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';

class SearchSettingScreen extends StatefulWidget {
  const SearchSettingScreen({Key? key}) : super(key: key);

  @override
  State<SearchSettingScreen> createState() => _SearchSettingScreenState();
}

class _SearchSettingScreenState extends State<SearchSettingScreen> {
  double _currentSliderValue1 = 10;
  double _currentSliderValue2 = 10;
  double _currentSliderValue3 = 10;
  RangeValues values1 = const RangeValues(10, 50);
  RangeValues values2 = const RangeValues(10, 50);
  RangeValues values3 = const RangeValues(10, 50);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 36),
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
                      const SizedBox(width: 30),
                      Text(StringConstant.myProfile,
                          style: TextStyles.menuTextFont),
                      const Spacer(),
                      const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(StringConstant.searchSetting,
                      style: TextStyles.headTextFont),
                  const SizedBox(height: 21),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: ColorConstant.gray,
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(StringConstant.gender,
                            style: TextStyles.regularText(
                                fontWeight: FontWeight.w500)),
                        const SizedBox(height: 16),
                        TabBar(
                            indicator: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      ColorConstant.backGroundColor1,
                                      ColorConstant.backGroundColor2
                                    ]
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            indicatorColor: ColorConstant.transparent,
                            labelColor: ColorConstant.buttonBorderColor,
                            labelStyle: TextStyles.regularText(
                                fontWeight: FontWeight.w500),
                            unselectedLabelColor: ColorConstant.gray,
                            unselectedLabelStyle: TextStyles.regularText(
                                color: ColorConstant.gray,
                                fontWeight: FontWeight.w500),
                            tabs: [
                              Tab(
                                text: StringConstant.male,
                              ),
                              Tab(text: StringConstant.female),
                              Tab(text: StringConstant.both),
                            ]),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 380,
                    decoration: BoxDecoration(color: ColorConstant.transparent),
                    child: TabBarView(children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: ColorConstant.gray)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(StringConstant.distance,
                                        style: TextStyles.regularText(
                                            fontWeight: FontWeight.w500)),
                                    const Spacer(),
                                    Text('35km',
                                        style: TextStyles.regularText())
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Text('Max',
                                        style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 48,
                                      width: 94,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('35',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Slider(
                                  value: _currentSliderValue1,
                                  max: 50,
                                  activeColor: ColorConstant.backGroundColor2,
                                  inactiveColor: ColorConstant.gray,
                                  label:
                                      _currentSliderValue1.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue1 = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: ColorConstant.gray)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(StringConstant.age,
                                        style: TextStyles.regularText(
                                            fontWeight: FontWeight.w500)),
                                    const Spacer(),
                                    Text('21 - 37',
                                        style: TextStyles.regularText())
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Text('From',
                                        style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 94,
                                      height: 48,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('21',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text('To', style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 94,
                                      height: 48,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('37',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 22),
                                RangeSlider(
                                    values: values1,
                                    min: 0,
                                    max: 50,
                                    activeColor: ColorConstant.backGroundColor2,
                                    inactiveColor: ColorConstant.gray,
                                    labels: RangeLabels(
                                        values1.start.round().toString(),
                                        values1.end.round().toString()),
                                    onChanged: (values) => setState(() {
                                          values1 = values;
                                        }))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: ColorConstant.gray)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(StringConstant.distance,
                                        style: TextStyles.regularText(
                                            fontWeight: FontWeight.w500)),
                                    const Spacer(),
                                    Text('35km',
                                        style: TextStyles.regularText())
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Text('Max',
                                        style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 48,
                                      width: 94,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('35',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Slider(
                                  value: _currentSliderValue2,
                                  max: 50,
                                  activeColor: ColorConstant.backGroundColor2,
                                  inactiveColor: ColorConstant.gray,
                                  label:
                                      _currentSliderValue2.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue2 = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: ColorConstant.gray)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(StringConstant.age,
                                        style: TextStyles.regularText(
                                            fontWeight: FontWeight.w500)),
                                    const Spacer(),
                                    Text('21 - 37',
                                        style: TextStyles.regularText())
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Text('From',
                                        style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 94,
                                      height: 48,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('21',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text('To', style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 94,
                                      height: 48,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('37',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 22),
                                RangeSlider(
                                    values: values2,
                                    min: 0,
                                    max: 50,
                                    activeColor: ColorConstant.backGroundColor2,
                                    inactiveColor: ColorConstant.gray,
                                    labels: RangeLabels(
                                        values2.start.round().toString(),
                                        values2.end.round().toString()),
                                    onChanged: (values) => setState(() {
                                          values2 = values;
                                        }))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: ColorConstant.gray)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(StringConstant.distance,
                                        style: TextStyles.regularText(
                                            fontWeight: FontWeight.w500)),
                                    const Spacer(),
                                    Text('35km',
                                        style: TextStyles.regularText())
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Text('Max',
                                        style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 48,
                                      width: 94,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('35',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 22),
                                Slider(
                                  value: _currentSliderValue3,
                                  max: 50,
                                  activeColor: ColorConstant.backGroundColor2,
                                  inactiveColor: ColorConstant.gray,
                                  label:
                                      _currentSliderValue3.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue3 = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: ColorConstant.gray)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(StringConstant.age,
                                        style: TextStyles.regularText(
                                            fontWeight: FontWeight.w500)),
                                    const Spacer(),
                                    Text('21 - 37',
                                        style: TextStyles.regularText())
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Text('From',
                                        style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 94,
                                      height: 48,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('21',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text('To', style: TextStyles.regularText()),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 94,
                                      height: 48,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: ColorConstant.gray)),
                                      child: Center(
                                        child: Text('37',
                                            style: TextStyles.regularText(
                                                color: ColorConstant.black)),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 22),
                                RangeSlider(
                                    values: values3,
                                    min: 0,
                                    max: 50,
                                    activeColor: ColorConstant.backGroundColor2,
                                    inactiveColor: ColorConstant.gray,
                                    labels: RangeLabels(
                                        values3.start.round().toString(),
                                        values3.end.round().toString()),
                                    onChanged: (values) => setState(() {
                                          values3 = values;
                                        }))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  const SizedBox(height: 24),
                  InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => MainProfileScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          ColorConstant.buttonColor1,
                          ColorConstant.buttonColor2
                        ]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(StringConstant.apply,
                              style: TextStyles.boldText())),
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
