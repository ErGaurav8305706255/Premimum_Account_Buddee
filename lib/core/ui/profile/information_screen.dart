import 'package:flutter/material.dart';

import '../../constant/color_constant.dart';
import '../../constant/string_constant.dart';
class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(onTap: () {
                          Navigator.pop(context);
                        },
                            child: Icon(Icons.arrow_back_ios_new)),
                        SizedBox(width: 10),
                        Text(StringConstant.myProfile,
                          style: TextStyle(
                              color: ColorConstant.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                          ),
                        ),
                        Spacer(),
                        SizedBox(),
                      ],
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Text(StringConstant.information,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor,
                        ),),
                    ),
                    SizedBox(height: 15),
                    Text(StringConstant.name,
                        style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                          hintText: StringConstant.name,
                          filled: true,
                          hintStyle: TextStyle(
                            color: ColorConstant.textColor,
                          ),
                          fillColor: ColorConstant.transparent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: ColorConstant.gray,width: 1
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(StringConstant.dob,
                        style: TextStyle(
                            color: ColorConstant.textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                          hintText: StringConstant.dob,
                          filled: true,
                          hintStyle: TextStyle(
                            color: ColorConstant.textColor,
                          ),
                          fillColor: ColorConstant.transparent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: ColorConstant.gray,width: 1
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(StringConstant.gender,
                        style: TextStyle(
                            color: ColorConstant.textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorConstant.gray,width: 1)
                      ),
                      child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.containerColor,
                          ),
                          indicatorColor: ColorConstant.transparent,
                          labelColor: ColorConstant.textColor,
                          labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          tabs: [
                            Tab(
                              child: Row(
                                children: [
                                  Icon(Icons.male),
                                  Text(StringConstant.male)
                                ],
                              ),
                            ),
                            Tab(child: Row(
                              children: [
                                Icon(Icons.female),
                                Text(StringConstant.female)
                              ],
                            ),)
                          ]),
                    ),

                    SizedBox(height: 150),
                    InkWell(onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => MainProfileScreen()));
                    },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorConstant.buttonColor
                        ),
                        child: Center(child: Text(StringConstant.save,
                          style: TextStyle(
                              color: ColorConstant.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),)),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
