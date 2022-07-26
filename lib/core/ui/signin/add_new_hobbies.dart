import 'package:flutter/material.dart';

import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
import 'add_hobby_list_screen.dart';
import 'add_two_hobby_screen.dart';
import 'all_add_hobby_screen.dart';
import 'multi_selected_hobby.dart';
class AddNewHobbiesScreen extends StatefulWidget {
  const AddNewHobbiesScreen({Key? key}) : super(key: key);

  @override
  State<AddNewHobbiesScreen> createState() => _AddNewHobbiesScreenState();
}

class _AddNewHobbiesScreenState extends State<AddNewHobbiesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.fromLTRB(24, 47, 24, 0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },
                        child: Image.asset(ImageConstant.shape,height: 15.86,width: 8.89,fit: BoxFit.cover,)),
                    const Spacer(),
                    const SizedBox(),
                  ],
                ),
                const SizedBox(height: 36),
                Center(
                  child: Text(StringConstant.addHobby,
                      style: TextStyles.headTextFont
                  ),
                ),
                const SizedBox(height: 36),
                Center(
                  child: Text('You have 1 hobby',
                  style: TextStyles.regularText(
                    fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(9, 4, 10, 4),
                      height: 32,width: 152,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.containerColor
                      ),
                      child: Text(StringConstant.badminton,style: TextStyles.tabTextFont),
                    ),
                    Spacer(),
                    Icon(Icons.border_color_outlined,color: ColorConstant.gray),
                    // Image.asset(ImageConstant.edit,width: 19,height: 19.38,fit: BoxFit.cover),
                    SizedBox(width: 13),
                    Icon(Icons.cancel_outlined, color: ColorConstant.gray,)
                  ],
                ),
                SizedBox(height: 16),
                Text(StringConstant.intermediate,style: TextStyles.regularText(),),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MultiSelectedHobbyScreen()));
                  },
                  child: Container(
                    height: 58,width: 311,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: ColorConstant.navyBlue,width: 1.5),
                        color: ColorConstant.transparent,
                    ),
                    child: Center(
                      child: Text(StringConstant.addNewHobby,
                        style: TextStyles.semiBoldText(fontSize: 16,fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AllAddHobbyScreen()));
                  },
                  child: Container(
                    height: 58,width: 311,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: ColorConstant.buttonColor,width: 1.5),
                        color: ColorConstant.transparent
                    ),
                    child: Center(
                      child: Text(StringConstant.nextStep,
                        style: TextStyles.semiBoldText(fontSize: 16,fontWeight: FontWeight.w600,color: ColorConstant.buttonColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    ));
  }
}
