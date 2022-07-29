import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  final List items = [
    {
      'image': 'assets/images/persn.png',
      'title':'assets/images/addicon.svg',

    },
    {
      'image': 'assets/images/empy.png',
      'title':'assets/images/addicon.svg',

    },
    {
      'image': 'assets/images/empy.png',
      'title':'assets/images/addicon.svg',

    },
    {
      'image': 'assets/images/empy.png',
      'title':'assets/images/addicon.svg',

    },
    {
      'image': 'assets/images/empy.png',
      'title':'assets/images/addicon.svg',

    },
    {
      'image': 'assets/images/empy.png',
      'title':'assets/images/addicon.svg',

    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 47, 24, 0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.pop(context);
                  },
                      child: SvgPicture.asset(ImageConstant.backArrow,height: 15.86,width: 8.89,fit: BoxFit.cover,)),
                  Spacer(),
                  SizedBox()
                ],
              ),
              SizedBox(height: 36),
              Text(
                  StringConstant.gallery,
                  style: TextStyles.headTextFont),
              SizedBox(height: 42),
              SizedBox(
                height: 300,
                child: GridView.builder(
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 140
                    ),
                    itemBuilder: (context , index){
                      return Container(
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(items[index]['image']),fit: BoxFit.cover
                              )
                          ),
                          child: InkWell(
                              // onTap: () => Navigator.pushNamed(context, Routes.multiPhotoScreen),
                              child: SvgPicture.asset(items[index]['title'],height: 20,width: 20,fit: BoxFit.cover,))
                      );
                    }
                ),
              ),
              SizedBox(height: 188),
              InkWell(
                onTap: () => Navigator.pushNamed(context, Routes.profileIntroScreen),
                child: Container(height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: ColorConstant.buttonColor
                  ),
                  child: Center(
                      child: Text(StringConstant.save,
                          style: TextStyles.boldText()
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
