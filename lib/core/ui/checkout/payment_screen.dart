import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 20),
              Center(
                child: Text(
                  StringConstant.getPremium,
                  style: TextStyles.headTextFont,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SvgPicture.asset(ImageConstant.rightSignSvg,height: 30,width: 30,fit: BoxFit.cover,),
                  SizedBox(width: 5),
                  Text(StringConstant.unlimitedLikes,style: TextStyles.regularText(),),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(ImageConstant.rightSignSvg,height: 30,width: 30,fit: BoxFit.cover,),
                  SizedBox(width: 5),
                  Text(StringConstant.unlimitedHobbiesListed,style: TextStyles.regularText(),),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(ImageConstant.rightSignSvg,height: 30,width: 30,fit: BoxFit.cover,),
                  SizedBox(width: 5),
                  Text(StringConstant.changeYourLocation,style: TextStyles.regularText(),),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(ImageConstant.rightSignSvg,height: 30,width: 30,fit: BoxFit.cover,),
                  SizedBox(width: 5),
                  Text(StringConstant.seeIfYourMessagesHaveBeenRead,style: TextStyles.regularText(),),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: Text(StringConstant.chooseYourPlan,style: TextStyles.regularText(
                  fontSize: 20,fontWeight: FontWeight.w500
                ),),
              ),
              SizedBox(height: 30),
              Row(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pop(context);
                   },
                     child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         gradient: LinearGradient(
                             colors: [
                               ColorConstant.backGroundColor1,
                               ColorConstant.backGroundColor2
                             ]),
                       ),
                       child: Text(StringConstant.no,style: TextStyles.boldText()),
                     ),
                   ),
                   Spacer(),
                   InkWell(onTap: () {
                     scaffoldKey.currentState!.showBottomSheet((context) => Container(
                         height: 319,
                         width: double.infinity,
                         child: Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                               child: Row(
                                 children: [
                                   SvgPicture.asset(ImageConstant.paySvg,height: 21,width: 52,fit: BoxFit.cover,),
                                   Spacer(),
                                   InkWell(onTap: () {
                                     Navigator.pop(context);
                                   },
                                     child: Text(StringConstant.cancl,style: TextStyles.regularText(
                                       fontWeight: FontWeight.w500,
                                       color: ColorConstant.redColor
                                     ),),
                                   )
                                 ],
                               ),
                             ),
                             Divider(
                               thickness: 1, color: ColorConstant.dividerColor,height: 20,
                             ),
                             InkWell(
                               onTap: () => Navigator.pushNamed(context, Routes.congratulationScreen),
                               child: Padding(
                                 padding: const EdgeInsets.fromLTRB(48, 19, 16, 19),
                                 child: Row(
                                   children: [
                                     Container(alignment: Alignment.bottomRight,
                                       height: 24,
                                       width: 37,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(2),
                                         gradient: LinearGradient(
                                           colors: [
                                             ColorConstant.cardColor2,
                                             ColorConstant.cardColor1
                                           ]
                                         )
                                       ),
                                       child: SvgPicture.asset(ImageConstant.visaSvg,height: 3,width: 9,fit: BoxFit.cover,)
                                     ),
                                     SizedBox(width: 11),
                                     Text(StringConstant.visaAvoInf,style: TextStyles.regularText(
                                       fontSize: 13,
                                       fontWeight: FontWeight.w500
                                     ),),
                                     Spacer(),
                                     SvgPicture.asset(ImageConstant.forwardSvg,height: 10,width: 17,fit: BoxFit.cover,)
                                   ],
                                 ),
                               ),
                             ),
                             Divider(
                               thickness: 1,color: ColorConstant.dividerColor,
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   SizedBox(),
                                   Text(
                                     StringConstant.payGuacamole,style: TextStyles.regularText(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w500),
                                   ),
                                   Text('\$${99.99}',style: TextStyles.regularText(
                                     fontSize: 22,
                                   ),)
                                 ],
                               ),
                             ),
                             Divider(
                               thickness: 1,color: ColorConstant.dividerColor,
                             ),
                             SvgPicture.asset(ImageConstant.confirmSvg,height: 39,width: 39,fit: BoxFit.cover,),
                             SizedBox(height: 4),
                             Text(StringConstant.confirmWith,style: TextStyles.regularText(
                               fontWeight: FontWeight.w500
                             ),)
                           ],
                         ),
                     )
                     );
                   },
                     child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         gradient: LinearGradient(
                             colors: [
                               ColorConstant.backGroundColor1,
                               ColorConstant.backGroundColor2
                             ]),
                       ),
                       child: Text(StringConstant.yes,style: TextStyles.boldText()),
                     ),
                   ),
                 ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
