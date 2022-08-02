import 'package:flutter/material.dart';

import 'core/onBording/signin_intro_screen.dart';
import 'core/onbording/bottom_navigation_bar_screen.dart';
import 'core/onbording/profile_intro_screen.dart';
import 'core/ui/explore/explore_screen.dart';
import 'core/ui/explore/filter_screen.dart';
import 'core/ui/profile/gallery_screen.dart';
import 'core/ui/profile/hobbies_screen.dart';
import 'core/ui/profile/information_screen.dart';
import 'core/ui/profile/privacy_policy_screen.dart';
import 'core/ui/profile/profile_main_screen.dart';
import 'core/ui/profile/search_setting_screen.dart';
import 'core/ui/signin/add_hobbies_search_screen.dart';
import 'core/ui/signin/add_hobby_list_search_screen.dart';
import 'core/ui/signin/add_new_hobbies.dart';
import 'core/ui/signin/add_photo_screen.dart';
import 'core/ui/signin/add_three_hobby_screen.dart';
import 'core/ui/signin/add_two_hobby_screen.dart';
import 'core/ui/signin/all_add_hobby_screen.dart';
import 'core/ui/signin/multi_photo_screen.dart';
import 'core/ui/signin/multi_selected_search_hobby.dart';
import 'core/ui/signin/signin_screen.dart';
import 'core/ui/signin/signup_about.dart';


class RouterApp{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.introScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInIntroScreen());
      case Routes.signInScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());
      case Routes.signUpAbout:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpAbout());
      case Routes.addHobbyListSearchScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddHobbyListSearchScreen());
      case Routes.addHobbiesSearchScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddHobbiesSearchScreen());
      case Routes.addNewHobbiesScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddNewHobbiesScreen());
      case Routes.multiSelectedHobbyScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MultiSelectedHobbyScreen());
      case Routes.addTwoHobbyScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddTwoHobbyScreen());
      case Routes.addThreeHobbyScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddThreeHobbyScreen());
      case Routes.allAddHobbyScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AllAddHobbyScreen());
      case Routes.addPhotoScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddPhotoScreen());
      case Routes.multiPhotoScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MultiPhotoScreen());
      case Routes.profileIntroScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileIntroScreen());
      case Routes.galleryScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const GalleryScreen());
      case Routes.profileMainScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileMainScreen());
      case Routes.informationScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const InformationScreen());
      case Routes.hobbiesScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HobbiesScreen());
      case Routes.searchSettingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SearchSettingScreen());
      case Routes.privacyPolicyScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PrivacyPolicyScreen());
      case Routes.exploreScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ExploreScreen());
      case Routes.filterScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const FilterScreen());
      case Routes.bottomNavigatorBarScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BottomNavigatorBarScreen());


      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }
}
class Routes {
  static const String introScreen = '/introScreen';
  static const String signInScreen = '/signInScreen';
  static const String signUpAbout = '/signUpAbout';
  static const String addHobbyListSearchScreen = '/addHobbyListSearchScreen';
  static const String addHobbiesSearchScreen = '/addHobbiesSearchScreen';
  static const String addNewHobbiesScreen = '/addNewHobbiesScreen';
  static const String multiSelectedHobbyScreen = '/multiSelectedHobbyScreen';
  static const String addTwoHobbyScreen = '/addTwoHobbyScreen';
  static const String addThreeHobbyScreen = '/addThreeHobbyScreen';
  static const String allAddHobbyScreen = '/allAddHobbyScreen';
  static const String addPhotoScreen = '/addPhotoScreen';
  static const String multiPhotoScreen = '/multiPhotoScreen';
  static const String profileIntroScreen = '/profileIntroScreen';
  static const String galleryScreen = '/galleryScreen';
  static const String profileMainScreen = '/profileMainScreen';
  static const String informationScreen = '/informationScreen';
  static const String hobbiesScreen = '/hobbiesScreen';
  static const String searchSettingScreen = '/searchSettingScreen';
  static const String privacyPolicyScreen = '/privacyPolicyScreen';
  static const String exploreScreen = '/exploreScreen';
  static const String filterScreen = '/filterScreen';
  static const String bottomNavigatorBarScreen = '/bottomNavigatorBarScreen';

  static const String noInternetScreen = '/noInternetScreen';
}
