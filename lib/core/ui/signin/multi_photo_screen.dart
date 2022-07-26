import 'package:flutter/material.dart';

import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
class MultiPhotoScreen extends StatefulWidget {
  const MultiPhotoScreen({Key? key}) : super(key: key);

  @override
  State<MultiPhotoScreen> createState() => _MultiPhotoScreenState();
}

class _MultiPhotoScreenState extends State<MultiPhotoScreen> {
  final List items = [
    {
      'image': 'assets/images/persn.png',
      'title':'assets/images/sign.png',

    },
    {
      'image': 'assets/images/img2.png',
      'title':'assets/images/sign.png',
    },
    {
      'image': 'assets/images/img3.png',
      'title':'assets/images/sign.png',

    },
    {
      'image': 'assets/images/empy.png',
      'title':'assets/images/Add.png',

    },
    {
      'image': 'assets/images/empy.png',
      'title':'assets/images/Add.png',

    },
    {
      'image': 'assets/images/empy.png',
      'title':'assets/images/Add.png',

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
                      child: Image.asset(ImageConstant.shape,height: 15.86,width: 8.89,fit: BoxFit.cover,)),
                  Spacer(),
                  SizedBox()
                ],
              ),
              SizedBox(height: 36),
              Text(
                  StringConstant.addPhoto,
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
                        child: Image.asset(items[index]['title'],height: 20,width: 20,fit: BoxFit.cover,)
                      );
                    }
                    ),
              ),
              SizedBox(height: 96),
              Text(StringConstant.youCanSet,style: TextStyles.lightText(fontWeight: FontWeight.w500)
              ),
              SizedBox(height: 24),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.stars, color: ColorConstant.starColor),
                      Text('Main Photo',style: TextStyles.starFont,)
                    ],
                  ),
                  SizedBox(width: 53),
                  Column(
                    children: [
                      Icon(Icons.cancel,color: ColorConstant.deleteColor),
                      Text('Delete',style: TextStyles.deleteFont,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
