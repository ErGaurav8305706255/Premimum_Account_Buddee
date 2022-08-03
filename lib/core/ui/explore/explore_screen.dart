import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/color_constant.dart';
import 'package:premium_account_buddee/core/constant/image_constant.dart';
import 'package:premium_account_buddee/core/constant/string_constant.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../../router.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  int currentIndex = 0;
  int currentIndex2 = 0;

  final List item = [
    {
      'url': ImageConstant.image1,
      'title': StringConstant.badminton,
      'subtitle': StringConstant.noSpecific,
    },
    {
      'url': ImageConstant.image2,
      'title': StringConstant.photography,
      'subtitle': StringConstant.noSpecific,
    },
    {
      'url': ImageConstant.image3,
      'title': StringConstant.surfing,
      'subtitle': StringConstant.noSpecific,
    },
    {
      'url': ImageConstant.image4,
      'title': StringConstant.fitness,
      'subtitle': StringConstant.noSpecific,
    },
  ];

  final List data = [
    {
      'title': StringConstant.astronomy,
    },
    {
      'title': StringConstant.tennis,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(StringConstant.buddee,style: TextStyles.headTextFont),
                      const Spacer(),
                      InkWell(onTap: () => Navigator.pushNamed(context, Routes.filterScreen),
                          child: SvgPicture.asset(ImageConstant.filterSvg,height: 24,width: 26,fit: BoxFit.cover,))
                    ],
                  ),
                  const SizedBox(height: 23),
                  Stack(
                    children:[
                      Container(
                        height: 367,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: CarouselSlider(
                          options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                                },
                              height: 367.0,
                              autoPlay: true,
                              viewportFraction: 1,
                              enableInfiniteScroll: false,
                              enlargeCenterPage: true
                          ),
                          items: item.map((items){
                            return Builder(builder: (BuildContext context) {
                              return Container(
                                margin: const EdgeInsets.all(3),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(items['url'],
                                        fit: BoxFit.cover)),
                              );
                            });
                          }).toList(),
                      ),
                    ),
                      Positioned(
                        top: 16,left: 119,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (var i = 0; i < item.length; i++)
                              buildIndicator(currentIndex == i)
                          ],
                        ),),
                      Positioned(
                          top: 226,left: 16,
                          child: Row(
                            children: [
                              Text(StringConstant.tom,style: TextStyles.boldText(
                                  fontSize: 26
                              ),),
                              const SizedBox(width: 11),
                              Container(
                                padding: const EdgeInsets.all(6),
                                height: 27,width: 35,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          ColorConstant.buttonColor1,
                                          ColorConstant.buttonColor2
                                        ]
                                    ),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: SvgPicture.asset(ImageConstant.diamondSvg,height: 15,width: 16),
                              )
                            ],
                          )),
                      Positioned(
                          top: 261,left: 16,
                          child: Row(
                            children: [
                              SvgPicture.asset(ImageConstant.arrowSvg),
                              const SizedBox(width: 8),
                              Text(StringConstant.away,
                                style: TextStyles.regularText(
                                    color: ColorConstant.white
                                ),)
                            ],
                          )),
                      Positioned(
                          top: 260,left: 30,
                          child: Row(
                            children: [
                              SvgPicture.asset(ImageConstant.canclSvg, height: 120,width: 120,fit: BoxFit.cover),
                              const SizedBox(width: 10),
                              SvgPicture.asset(ImageConstant.ritSignSvg, height: 120,width: 120,fit: BoxFit.cover),
                            ],
                          ))
                    ]
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text(StringConstant.youGot,
                          style: TextStyles.regularText(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: ColorConstant.backGroundColor
                          )),
                      Container(
                        height: 27,width: 95,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                ColorConstant.buttonColor1,
                                ColorConstant.buttonColor2
                              ]
                          ),
                            borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(ImageConstant.diamondSvg, height: 20,width: 20),
                              Text(StringConstant.premium,style: TextStyles.mediumText(
                                  color: ColorConstant.white
                              ),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                      height: 40,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: item.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 29,
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: ColorConstant.backGroundColor
                              ),
                              child: Center(child: Text(item[index]['title'],style: TextStyles.mediumText(
                                  color: ColorConstant.black
                              ),)),
                            );
                          })),
                  const SizedBox(height: 24),
                  CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex2 = index;
                        });
                      },
                      height: 147,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                    ),
                    items: item.map((items){
                      return Builder(builder: (BuildContext context){
                        return Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1,color: ColorConstant.lightIndicatorColor
                              )
                          ),
                          margin: const EdgeInsets.all(3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(items['title'],style: TextStyles.regularText(
                                  color: ColorConstant.backGroundColor,
                                  fontWeight: FontWeight.w600
                              ),),
                              const SizedBox(height: 16),
                              Text(items['subtitle'],style: TextStyles.regularText(),)
                            ],
                          ),
                        );
                      });
                    }).toList(),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < item.length; i++)
                        buildIndicator2(currentIndex2 == i)
                    ],
                  ),
                  const SizedBox(height: 17),
                  Text(StringConstant.tomOtherHobbies,
                    style: TextStyles.regularText(
                        fontWeight: FontWeight.w600,fontSize: 15
                    ),),
                  const SizedBox(height: 13),
                  SizedBox(
                      height: 40,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 29,
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: ColorConstant.buttonBorderColor,width: 1)
                              ),
                              child: Center(child: Text(data[index]['title'],
                                style: TextStyles.mediumText(
                                    color: ColorConstant.buttonBorderColor
                                ),)),
                            );
                          })),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,
                            color: ColorConstant.lightIndicatorColor)
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(StringConstant.astronomy,style: TextStyles.tabTextFont),
                        const SizedBox(height: 16),
                        Text(StringConstant.astronomyIsTheStudy,style: TextStyles.normalFont,)
                      ],
                    ),
                  )
                ],
              ),
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
          shape: BoxShape.circle,
          color: currentIndex ? Colors.white : ColorConstant.gray,
        ),
      ),
    );
  }
  Widget buildIndicator2(bool currentIndex2){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex2 ? ColorConstant.backGroundColor : ColorConstant.lightIndicatorColor,
        ),
      ),
    );
  }
}
