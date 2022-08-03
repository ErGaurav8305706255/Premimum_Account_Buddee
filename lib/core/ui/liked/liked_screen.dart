import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/color_constant.dart';

import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
class LikedScreen extends StatefulWidget {
  const LikedScreen({Key? key}) : super(key: key);

  @override
  State<LikedScreen> createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> {

  final List data = [
    {
      'title': StringConstant.all,
      'image': ImageConstant.img5,
      'subtitle': StringConstant.ann,
      'hobbies': StringConstant.chess,
    },
    {
      'title': StringConstant.badminton,
      'image': ImageConstant.img6,
      'subtitle': StringConstant.inga,
      'hobbies': StringConstant.photography,
    },
    {
      'title': StringConstant.photography,
      'image': ImageConstant.img7,
      'subtitle': StringConstant.jes,
      'hobbies': StringConstant.tennis,
    },
    {
      'title': StringConstant.astronomy,
      'image': ImageConstant.img8,
      'subtitle': StringConstant.jeanny,
      'hobbies': StringConstant.yoga,
    },
    {
      'title': StringConstant.tennis,
      'image': ImageConstant.img9,
      'subtitle': StringConstant.harry,
      'hobbies': StringConstant.golf,
    },
    {
      'title': StringConstant.tennis,
      'image': ImageConstant.img10,
      'subtitle': StringConstant.millie,
      'hobbies': StringConstant.music,
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
                  InkWell(onTap: () {
                    Navigator.pop(context);
                  },
                      child: SvgPicture.asset(ImageConstant.backArrow,height: 15.86,width: 8.89,fit: BoxFit.cover,)),
                  const SizedBox(width: 30),
                  Text(StringConstant.explore,
                      style: TextStyles.menuTextFont
                  ),
                  const Spacer(),
                  SvgPicture.asset(ImageConstant.filterSvg,height: 24,width: 26,fit: BoxFit.cover,)
                ],
              ),
              const SizedBox(height: 33),
              Text(StringConstant.likedYou,style: TextStyles.headTextFont,),
              const SizedBox(height: 32),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                    itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: ColorConstant.gray)
                    ),
                    child: Center(child: Text(data[index]['title'],style: TextStyles.regularText(
                      fontWeight: FontWeight.w500
                    ),)),
                  );
                })),
              const SizedBox(height: 27),
              Expanded(
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                    ), itemBuilder: (ctx, index){
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                            height: 140,width: 140,
                            alignment: Alignment.bottomRight,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage(data[index]['image']),fit: BoxFit.cover
                                )
                            ),
                            child: Container(
                              height: 27,width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: ColorConstant.backGroundColor
                              ),
                              child: Center(child: Text(data[index]['hobbies'],style: TextStyles.lightText(
                                color: ColorConstant.buttonBorderColor
                              ),)),
                            )
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(data[index]['subtitle'],
                        textAlign: TextAlign.center,
                        style: TextStyles.lightText(
                            color: ColorConstant.buttonBorderColor
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
