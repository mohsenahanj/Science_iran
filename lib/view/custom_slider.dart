import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:science_iran/view/planet_list_view.dart';
import '../controller/routes/navigate_to_detail_screen.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.controller,
  });

  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    final List<Widget> planetWidgets = [
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/Hale_afshar.png'),
        planetName: 'Hale01'.tr(),
        description: 'Hale01_desc'.tr(),
        kilometresFromTheSun: 'Hale01_distance_from_sun'.tr(),
        size: 'Hale01_size'.tr(),
        temperature: 'Hale01_temperature'.tr(),
        additionalInfo: 'Hale01_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, Hale01DetailScreen);
        },
        tag: 'Hale01_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage:
            const AssetImage('assets/images/Mohsamadhasehem_pesaran.png'),
        planetName: 'Hashem01'.tr(),
        description: "Hashem01_desc".tr(),
        kilometresFromTheSun: 'Hashem01_distance_from_sun'.tr(),
        size: 'Hashem01_size'.tr(),
        temperature: 'Hashem01_temperature'.tr(),
        additionalInfo: 'Hashem01_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, Hashem01DetailScreen);
        },
        tag: 'Hashem01_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/Nima_arkani.png'),
        planetName: 'Nima01'.tr(),
        description: 'Nima01_desc'.tr(),
        kilometresFromTheSun: 'Nima01_distance_from_sun'.tr(),
        size: 'Nima01_size'.tr(),
        temperature: 'Nima01_temperature'.tr(),
        additionalInfo: 'Nima01_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, Nima01DetailScreen);
        },
        tag: 'Nima01_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/Behruz_boroomand.png'),
        planetName: 'Behrooz01'.tr(),
        description: 'Behrooz01_desc'.tr(),
        kilometresFromTheSun: 'Behrooz01_distance_from_sun'.tr(),
        size: 'Behrooz01_size'.tr(),
        temperature: 'Behrooz01_temperature'.tr(),
        additionalInfo: 'Behrooz01_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, Behrooz01DetailScreen);
        },
        tag: 'Behrooz01_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/Mehdi_bahadori.png'),
        planetName: 'Mehdi01'.tr(),
        description: 'Mehdi01_desc'.tr(),
        kilometresFromTheSun: 'Mehdi01_distance_from_sun'.tr(),
        size: 'Mehdi01_size'.tr(),
        temperature: 'Mehdi01_temperature'.tr(),
        additionalInfo: 'Mehdi01_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, Mehdi01DetailScreen);
        },
        tag: 'Mehdi01_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/Farhad_ardalan.png'),
        planetName: 'Farhad01'.tr(),
        description: 'Farhad01_desc'.tr(),
        kilometresFromTheSun: 'Farhad01_distance_from_sun'.tr(),
        size: 'Farhad01_size'.tr(),
        temperature: 'Farhad01_temperature'.tr(),
        additionalInfo: 'Farhad01_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, Farhad01DetailScreen);
        },
        tag: 'Farhad01_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/Kamran_elahian.png'),
        planetName: 'Kamran01'.tr(),
        description: 'Kamran01_desc'.tr(),
        kilometresFromTheSun: 'Kamran01_distance_from_sun'.tr(),
        size: 'Kamran01_size'.tr(),
        temperature: 'Kamran01_temperature'.tr(),
        additionalInfo: 'Kamran01_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, Kamran01DetailScreen);
        },
        tag: 'Kamran01_tag',
      ),
      PlanetListView(
        scaleX: 2,
        scaleY: 2,
        assetImage: const AssetImage('assets/images/Masud_alimohamadi.png'),
        planetName: 'Masud01'.tr(),
        description: 'Masud01_desc'.tr(),
        kilometresFromTheSun: 'Masud01_distance_from_sun'.tr(),
        size: 'Masud01_size'.tr(),
        temperature: 'Masud01_temperature'.tr(),
        additionalInfo: 'Masud01_additional_info'.tr(),
        onTap: () {
          navigateToDetailScreen(context, Masud01DetailScreen);
        },
        tag: 'Masud01_tag',
      ),
    ];

    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(430, 932),
      builder: (context, child) {
        return CarouselSlider(
          options: CarouselOptions(
            disableCenter: true,
            enlargeCenterPage: true,
            height: 1000.sp,
            scrollDirection: Axis.horizontal,
            enableInfiniteScroll: true,
            viewportFraction: 0.65,
          ),
          carouselController: controller,
          items: planetWidgets,
        );
      },
    );
  }
}

void navigateToDetailScreen(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
