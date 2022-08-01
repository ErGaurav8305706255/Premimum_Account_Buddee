import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:premium_account_buddee/core/constant/color_constant.dart';
import 'package:premium_account_buddee/core/constant/image_constant.dart';
import 'package:premium_account_buddee/core/constant/string_constant.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  int currentIndex = 0;
  final List images = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(StringConstant.buddee,style: TextStyles.headTextFont),
                    Spacer(),
                    SvgPicture.asset(ImageConstant.filterSvg,height: 24,width: 26,fit: BoxFit.cover,)
                  ],
                ),
                SizedBox(height: 23),
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
                        items: images.map((items){
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              margin: EdgeInsets.all(0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(items, fit: BoxFit.cover)),
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
                            for (var i = 0; i < images.length; i++)
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
                            SizedBox(width: 11),
                            Container(padding: EdgeInsets.all(6),
                              height: 27,width: 35,
                              decoration: BoxDecoration(
                                color: ColorConstant.buttonColor,
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
                            SizedBox(width: 8),
                            Text(StringConstant.away,style: TextStyles.regularText(
                              color: ColorConstant.white
                            ),)
                          ],
                        )),
                    Positioned(
                        top: 250,left: 20,
                        child: Row(
                          children: [
                            SvgPicture.asset(ImageConstant.canclSvg),
                            SizedBox(width: 10),
                            SvgPicture.asset(ImageConstant.ritSignSvg),
                          ],
                        ))
                  ]
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text(StringConstant.youGot,style: TextStyles.regularText(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.backGroundColor
                    )),
                    Container(
                      height: 27,width: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorConstant.buttonColor
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
                )
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
          shape: BoxShape.circle,
          color: currentIndex ? Colors.white : ColorConstant.gray,
        ),
      ),
    );
  }
}
