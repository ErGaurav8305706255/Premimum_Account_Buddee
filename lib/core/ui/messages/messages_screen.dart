import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                    SizedBox(width: 30),
                    Text(StringConstant.messages,
                        style: TextStyles.menuTextFont
                    ),
                    Spacer(),
                   SizedBox(),
                  ],
                ),
                SizedBox(height: 26),
                Container(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(data[index]['image'],
                                height: 100,width: 100,
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(data[index]['subtitle'],style: TextStyles.regularText(
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    );
                  })),
              ],
            ),
          ),
        ));
  }
}
