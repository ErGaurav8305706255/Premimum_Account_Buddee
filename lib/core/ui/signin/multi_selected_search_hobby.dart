import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../router.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../../constant/text_style.dart';

class MultiSelectedHobbyScreen extends StatefulWidget {
  const MultiSelectedHobbyScreen({Key? key}) : super(key: key);

  @override
  State<MultiSelectedHobbyScreen> createState() => _MultiSelectedHobbyScreenState();
}

class _MultiSelectedHobbyScreenState extends State<MultiSelectedHobbyScreen> {

  final List _searchHistory = [];
  bool isSearchEnable = false;
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
                          child: SvgPicture.asset(ImageConstant.backArrow,height: 16,width: 9, fit: BoxFit.cover)),
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
                    controller: _textController,
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

                    onTap: () {
                      if(_textController.text.isEmpty){
                        setState(() {
                          isSearchEnable = true;
                        });
                      }
                    },
                    onChanged: (value){
                      print("valueCheck ${value.length}");
                      if(value.isEmpty){
                        _searchHistory.clear();
                        setState(() {
                        });
                      }
                    },
                    onFieldSubmitted: (value){
                      _searchHistory.clear();
                      items.forEach((pc) {
                        if (pc['title'].contains(value)) _searchHistory.add(pc);
                      });
                      setState(() {
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 400,
                    child: GridView.builder(
                        itemCount: isSearchEnable ? _searchHistory.length : items.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 40
                        ),
                        itemBuilder: (context , index){
                          List tempList = isSearchEnable ? _searchHistory : items;
                          return _buildCardViewWidget(
                            index: index,
                            title: tempList[index],
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

  _buildCardViewWidget({
    required int index,
    required String title,
  }) {
    return InkWell(
      onTap: index == 14
          ? () => Navigator.pushNamed(context, Routes.addTwoHobbyScreen)
          : () =>
          Navigator.pushNamed(context,Routes.multiSelectedHobbyScreen),

      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 9),
            height: 35,
            width: 152,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: ColorConstant.gray,
                )),
            child: Text(
              title,
              style: TextStyles.tabTextFont,
            ),
          ),
        ],
      ),
    );
  }
}


