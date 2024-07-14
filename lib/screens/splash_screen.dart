import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:science_iran/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToHomeScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(430, 932),
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Color(0xFF44AD90),
          body: Stack(
            children: [
              Center(
                heightFactor: 1.5.sp,
                child: Lottie.asset('assets/lotties/CizPhdadYV.json'),
              ),
              Align(
                alignment: const Alignment(0, 0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 350.0,
                  ),
                  child: Text(
                    "فهرست دانشمندان و مهندسان معاصر ایران",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.3.sp,
                    style: TextStyle(
                      fontFamily: 'CIN',
                      fontSize: 20,
                      color: Color(0xFF2A2A2A),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 5.0,
                  ),
                  child: Text(
                    "این فهرست دانشمندان و صاحبنظران علمی و هنری معاصر ایران است که در ایران یا دیگر کشورهای جهان زندگی و فعالیت میکنند. برخی از این دانشمندان، علومی نوین و یا ابداعی جدید را برای اولین بار به جهان ارائه کرده اند و در واقع مرزهای آن دانش را گسترده تر کرده اند.!",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.3.sp,
                    style: TextStyle(
                      fontFamily: 'IRN',
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.75),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(350.sp, 50.sp),
                    elevation: 10,
                    foregroundColor: Colors.black45,
                    primary: Colors.white70,
                  ),
                  onPressed: navigateToHomeScreen,
                  child: const Text(
                    "ورود",
                    style: TextStyle(fontFamily: 'IRN'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
