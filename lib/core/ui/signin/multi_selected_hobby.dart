import 'package:flutter/material.dart';

import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';
import 'add_hobbies_search_screen.dart';
import 'add_two_hobby_screen.dart';
class MultiSelectedHobbyScreen extends StatefulWidget {
  const MultiSelectedHobbyScreen({Key? key}) : super(key: key);

  @override
  State<MultiSelectedHobbyScreen> createState() => _MultiSelectedHobbyScreenState();
}

class _MultiSelectedHobbyScreenState extends State<MultiSelectedHobbyScreen> {

  final List items = [
    'Astronomy', 'Birdwatching', 'Badminton', 'Camping', 'Chess', 'Dance','Drawing', 'Fitness', 'Fishing', 'Golf', 'Hoking', 'Kayaking',
    'Music', 'Origami', 'Photography', 'Rock Claiming', 'Surfing', 'Tennis', 'Trainspotting', 'Yoga'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 39),
                  Center(
                    child: Text(StringConstant.addHobby,
                        style: TextStyles.headTextFont
                    ),
                  ),
                  const SizedBox(height: 21),
                  Text(StringConstant.search,style: TextStyles.normalFont,),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                        fillColor: ColorConstant.transparent,
                        filled: true,
                        hintText: StringConstant.searchForHobbies,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: ColorConstant.buttonBorderColor,width: 1),
                        )
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 400,
                    child: GridView.builder(
                        itemCount: items.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 40
                        ),
                        itemBuilder: (context , index){
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AddTwoHobbyScreen()));
                            },
                            child: Container(
                              alignment: Alignment.bottomRight,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,color: ColorConstant.buttonBorderColor)
                              ),
                              child: Center(child: Text(items[index],style: TextStyles.tabTextFont)),
                            ),
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
