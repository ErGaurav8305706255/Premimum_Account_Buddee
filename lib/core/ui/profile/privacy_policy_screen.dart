import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 36),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },
                        child: SvgPicture.asset(ImageConstant.backArrow,height: 15.86,width: 8.89,fit: BoxFit.cover,)),
                    const SizedBox(width: 30),
                    Text(StringConstant.privacyPolicy,
                        style: TextStyles.menuTextFont
                    ),
                    const Spacer(),
                    const SizedBox(),
                  ],
                ),
                const SizedBox(height: 41,),
                Text(StringConstant.effective,style: TextStyles.normalFont),
                const SizedBox(height: 20,),
                Text(StringConstant.viewPrevious,style: TextStyles.normalFont),
                const SizedBox(height: 20,),
                Text(StringConstant.ourPreviousPolicy,style: TextStyles.normalFont),
                const SizedBox(height: 20,),
                Text(StringConstant.thisPrivacy,style: TextStyles.normalFont),
              ],
            ),
          ),
        ));
  }
}
