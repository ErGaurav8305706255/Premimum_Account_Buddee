import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/color_constant.dart';

import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final List data = [
    {
      'title': StringConstant.annWithoutAge,
      'image': ImageConstant.img5,
      'subtitle': StringConstant.haveYouEver,
      'hobbies': StringConstant.chess,
      'time': StringConstant.annTime,
    },
    {
      'title': StringConstant.ingaWithoutAge,
      'image': ImageConstant.img6,
      'subtitle': StringConstant.iamBased,
      'hobbies': StringConstant.photography,
      'time': StringConstant.ingaTime,
    },
    {
      'title': StringConstant.jesWithoutAge,
      'image': ImageConstant.img7,
      'subtitle': StringConstant.hahaYep,
      'hobbies': StringConstant.tennis,
      'time': StringConstant.jesTime,
    },
    {
      'title': StringConstant.jeannyWithoutAge,
      'image': ImageConstant.img8,
      'subtitle': StringConstant.haveYouEver,
      'hobbies': StringConstant.yoga,
      'time': StringConstant.jeannyTime,
    },
    {
      'title': StringConstant.harryWithoutAge,
      'image': ImageConstant.img9,
      'subtitle': StringConstant.iamBased,
      'hobbies': StringConstant.golf,
      'time': StringConstant.harryTime,
    },
    {
      'title': StringConstant.millieWithoutAge,
      'image': ImageConstant.img10,
      'subtitle': StringConstant.hahaYep,
      'hobbies': StringConstant.music,
      'time': StringConstant.millieTime,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.fromLTRB(18, 36, 18, 10),
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
                    Text(StringConstant.messages, style: TextStyles.menuTextFont),
                    const Spacer(),
                    const SizedBox(),
                  ],
                ),
                const SizedBox(height: 26),
                SizedBox(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 17),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(data[index]['image'],
                                      height: 56, width: 56, fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                data[index]['title'],
                                style: TextStyles.regularText(
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          );
                        })),
                const SizedBox(height: 24),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          padding: const EdgeInsets.all(16),
                          height: 128,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.lightIndicatorColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 24,
                                width: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        ColorConstant.backGroundColor1,
                                        ColorConstant.backGroundColor2
                                      ]
                                  ),
                                    borderRadius: BorderRadius.circular(5),
                                    ),
                                child: Center(
                                  child: Text(
                                    data[index]['hobbies'],
                                    style: TextStyles.regularText(
                                        fontSize: 12, fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.asset(
                                      data[index]['image'],
                                      height: 56,
                                      width: 56,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              data[index]['title'],
                                              style: TextStyles.regularText(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              data[index]['time'],
                                              style: TextStyles.mediumText(
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          data[index]['subtitle'],
                                          style: TextStyles.mediumText(),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
