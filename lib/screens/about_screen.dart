import 'package:flutter/material.dart';

class _AboutScreenState extends State<AboutScreen> {
  void navigateToHomeScreen() {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return Container(
      color: isLightMode ? const Color(0xFFEDF0F2) : const Color(0xFF17262A),
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF74DCBE),
          ),
          backgroundColor:
              isLightMode ? const Color(0xFF74DCBE) : const Color(0xFF17262A),
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Image.asset('assets/images/Aboutus.png'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'درباره ما',
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'CIN',
                      fontWeight: FontWeight.bold,
                      color: isLightMode ? Colors.white : Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'این فهرست دانشمندان و صاحبنظران علمی و هنری معاصر ایران است که در ایران یا دیگر کشورهای جهان زندگی و فعالیت میکنند. برخی از این دانشمندان، علومی نوین و یا ابداعی جدید را برای اولین بار به جهان ارائه کرده اند و در واقع مرزهای آن دانش را گسترده تر کرده اند',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'IRN',
                      color: isLightMode ? Colors.black : Colors.white),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(
                    child: Container(
                      width: 220,
                      height: 40,
                      decoration: BoxDecoration(
                        color: isLightMode ? Colors.green : Colors.greenAccent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: const Offset(2, 2),
                              blurRadius: 8.0),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'WWW.RUBENSTUDIO.IR',
                                style: TextStyle(
                                  fontFamily: 'IRN',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color:
                                      isLightMode ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}
