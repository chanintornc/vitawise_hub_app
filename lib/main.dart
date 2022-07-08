import 'package:flutter/material.dart';
import 'package:vitawise_hub_app/views/vw_splashscreen_ui.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VWSplashscreenUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}