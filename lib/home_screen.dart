import 'package:flutter/material.dart';
import 'package:sebha_screen/design_system/app_colors.dart';
import 'package:sebha_screen/tabs/hadith_tab.dart';
import 'package:sebha_screen/tabs/play_tab.dart';
import 'package:sebha_screen/tabs/quran_tab.dart';
import 'package:sebha_screen/tabs/radio_tab.dart';
import 'package:sebha_screen/tabs/sabha_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 2;
  List<String> backgroundImages = [
    'assets/Background2.png',
    'assets/Background3.png',
    'assets/background1.png',
    'assets/Background4.png',
    'assets/Background5.png',
  ];
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SabhaTab(),
    RadioTab(),
    PlayTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          backgroundImages[selectedindex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 10,
          left: MediaQuery.of(context).size.width / 2 - 125,
          child: Image.asset(
            'assets/logo.png',
            width: 250,
            height: 250,
          ),
        ),
        Scaffold(
          bottomNavigationBar: Theme(
            data:
                Theme.of(context).copyWith(canvasColor: AppColors.primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index) {
                setState(() {
                  selectedindex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: biltItemInBottom(index: 0, imageName: 'qouran'),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: biltItemInBottom(index: 1, imageName: 'hadith'),
                    label: 'Hadith'),
                BottomNavigationBarItem(
                    icon: biltItemInBottom(index: 2, imageName: 'sabha'),
                    label: 'Sabha'),
                BottomNavigationBarItem(
                    icon: biltItemInBottom(index: 3, imageName: 'radio'),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: biltItemInBottom(index: 4, imageName: 'play'),
                    label: 'Play'),
              ],
            ),
          ),
          body: tabs[selectedindex],
        ),
      ],
    );
  }

  Widget biltItemInBottom({required int index, required String imageName}) {
    return selectedindex == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: AppColors.blackOp),
            child: ImageIcon(AssetImage('assets/$imageName.png')))
        : ImageIcon(AssetImage('assets/$imageName.png'));
  }
}
