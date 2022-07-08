import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vitawise_hub_app/views/vw_home_ui.dart';

class VWSplashscreenUI extends StatefulWidget {
  const VWSplashscreenUI({Key? key}) : super(key: key);

  @override
  State<VWSplashscreenUI> createState() => _VWSplashscreenUIState();
}

class _VWSplashscreenUIState extends State<VWSplashscreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 4,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => VWHomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/bg_splashscreen.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'ผลิตภัณฑ์เสริมอาหาร',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      color: Color(0xFF578526),
                    ),
                  ),
                  Text(
                    'จากประเทศออสเตรเลีย',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      color: Color(0xFF578526),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  CircularProgressIndicator(
                    color: Color(0xFF0e7b96),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.1),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Version 1.0.0',
                      style: TextStyle(
                        color: Color(0xFF545454),
                      ),
                    ),
                    Text(
                      'Copyright © 2022 VitaWise All Rights Reserved.',
                      style: TextStyle(
                        color: Color(0xFF545454),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
