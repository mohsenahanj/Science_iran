import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:science_iran/screens/about_screen.dart';
import 'package:science_iran/view/custom_slider.dart';

import '../view/background_dottes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = CarouselController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;

    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(430, 932),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF44AD90).withOpacity(0.9),
            automaticallyImplyLeading: false,
            title: Text(
              'دانشمندان ایرانی ',
              style: TextStyle(fontFamily: 'CIN', color: Colors.white),
            ),
            leading: InkWell(
              child: Icon(Icons.menu, color: Colors.white),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));
              },
            ),
            actions: [
              PopupMenuButton<Locale>(
                color: Colors.greenAccent.shade100,
                elevation: 10,
                tooltip: 'languages'.tr(),
                onSelected: context.setLocale,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                        value: Locale('en', 'US'), child: Text("🇺🇸 EN")),
                    PopupMenuItem(
                        value: Locale('fa', 'FA'), child: Text("🇮🇷 FA")),
                  ];
                },
                icon: Container(
                  height: 40.sp,
                  width: 40.sp,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    border: Border.all(color: Colors.white),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.language,
                      color: Colors.white.withOpacity(0.65)),
                ),
              )
            ],
          ),
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Container(
                  height: h,
                  width: w,
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeBlue.darkHighContrastColor,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF44AD90).withOpacity(0.9),
                        const Color(0xFF74DCBE),
                        const Color(0xFF066249),
                      ],
                    ),
                  ),
                ),
                const BackgroundDotes(
                  x: -0.75,
                  y: -0.82,
                  color: Colors.greenAccent,
                  height: 30,
                  width: 30,
                ),
                const BackgroundDotes(
                  x: -1,
                  y: -0.8,
                  color: Colors.amber,
                  height: 10,
                  width: 10,
                ),
                const BackgroundDotes(
                  x: -0.9,
                  y: 0.15,
                  color: Colors.deepOrangeAccent,
                  height: 10,
                  width: 10,
                ),
                const BackgroundDotes(
                  x: -0.65,
                  y: 0.75,
                  color: Colors.deepPurpleAccent,
                  height: 15,
                  width: 15,
                ),
                const BackgroundDotes(
                  x: -0.99,
                  y: .8,
                  color: Colors.lightGreenAccent,
                  height: 10,
                  width: 10,
                ),
                const BackgroundDotes(
                  x: 0.93,
                  y: -0.8,
                  color: Colors.blue,
                  height: 30,
                  width: 30,
                ),
                const BackgroundDotes(
                  x: 0.96,
                  y: 0.4,
                  color: Colors.grey,
                  height: 10,
                  width: 10,
                ),
                const BackgroundDotes(
                  x: 0.73,
                  y: 0.9,
                  color: Colors.yellowAccent,
                  height: 15,
                  width: 15,
                ),
                CustomCarouselSlider(controller: controller)
                    .animate()
                    .slide(
                      curve: const FlippedCurve(Curves.slowMiddle),
                      duration: const Duration(milliseconds: 400),
                    )
                    .scale(),
              ],
            ),
          ),
        );
      },
    );
  }
}
