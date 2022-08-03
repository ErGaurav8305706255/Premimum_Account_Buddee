import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      'title':'assets/images/rightsign.svg',

    },
    {
      'image': 'assets/images/img2.png',
      'title':'assets/images/rightsign.svg',
    },
    {
      'image': 'assets/images/img3.png',
      'title':'assets/images/rightsign.svg',

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
                  const Spacer(),
                  const SizedBox()
                ],
              ),
              const SizedBox(height: 36),
              Text(
                  StringConstant.addPhoto,
                  style: TextStyles.headTextFont),
              const SizedBox(height: 42),
              SizedBox(
                height: 300,
                child: GridView.builder(
                    itemCount: items.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                        child: SvgPicture.asset(items[index]['title'],height: 20,width: 20,fit: BoxFit.cover,)
                      );
                    }
                    ),
              ),
              const SizedBox(height: 96),
              Text(StringConstant.youCanSet,style: TextStyles.lightText(fontWeight: FontWeight.w500)
              ),
              const SizedBox(height: 24),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    Navigator.pop(context);
                  },
                    child: Column(
                      children: [
                        SvgPicture.asset(ImageConstant.commentSvg,height: 32,width: 32,fit: BoxFit.cover),
                        Text('Main Photo',style: TextStyles.starFont,)
                      ],
                    ),
                  ),
                  const SizedBox(width: 53),
                  InkWell(onTap: () {
                    Navigator.pop(context);
                  },
                    child: Column(
                      children: [
                        SvgPicture.asset(ImageConstant.cancelSvg,height: 32,width: 32,fit: BoxFit.cover),
                        Text('Delete',style: TextStyles.deleteFont,)
                      ],
                    ),
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
