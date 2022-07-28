import 'package:flutter/material.dart';
import 'package:premium_account_buddee/core/constant/color_constant.dart';
import 'package:premium_account_buddee/core/constant/string_constant.dart';
import 'package:premium_account_buddee/core/constant/text_style.dart';

import '../../../router.dart';
import '../../constant/image_constant.dart';
import 'add_hobbies_search_screen.dart';
class AddHobbyListSearchScreen extends StatefulWidget {
  const AddHobbyListSearchScreen({Key? key}) : super(key: key);

  @override
  State<AddHobbyListSearchScreen> createState() => _AddHobbyListSearchScreenState();
}

class _AddHobbyListSearchScreenState extends State<AddHobbyListSearchScreen> {


  final List _searchHistory = [];
  bool isSearchEnable = false;
  final TextEditingController _txtController = TextEditingController();

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
                    controller: _txtController,
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
                      if(_txtController.text.isEmpty){
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
      onTap: index == 2
          ? () => Navigator.pushNamed(context, Routes.addHobbiesSearchScreen)
          : () =>
        Navigator.pushNamed(context,Routes.addHobbyListSearchScreen),

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
