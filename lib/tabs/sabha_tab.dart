import 'package:flutter/material.dart';
import 'package:sebha_screen/design_system/app_colors.dart';

class SabhaTab extends StatefulWidget {
  const SabhaTab({super.key});

  @override
  _SabhaTabState createState() => _SabhaTabState();
}

class _SabhaTabState extends State<SabhaTab> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 300,
          left: MediaQuery.of(context).size.width / 3.50 - 125,
          child: GestureDetector(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: Image.asset(
              'assets/sebha_img.png',
              width: 480,
              height: 480,
            ),
          ),
        ),
        Positioned(
          top: 520,
          left: MediaQuery.of(context).size.width / 1.80 - 100,
          child: Column(
            children: [
              Text(
                'سبحان الله',
                style: TextStyle(
                  color: AppColors.whitecolor,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '$counter',
                style: TextStyle(
                  color: AppColors.whitecolor,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 225,
          left: MediaQuery.of(context).size.width / 2.10 - 125,
          child: Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            style: TextStyle(
              color: AppColors.whitecolor,
              fontSize: 36,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
