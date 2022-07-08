import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitawise_hub_app/utils/vitawise_icons.dart';
import 'package:vitawise_hub_app/views/vw_vitawise_page.dart';

class VWHomeUI extends StatefulWidget {
  const VWHomeUI({Key? key}) : super(key: key);

  @override
  State<VWHomeUI> createState() => _VWHomeUIState();
}

class _VWHomeUIState extends State<VWHomeUI> {
  int _selectedIndex = 2;

  static const List<Widget> _pages = <Widget>[
    Icon(
      FontAwesomeIcons.jar,
      size: 150,
      color: Color(0xFF578526),
    ),
    Icon(
      FontAwesomeIcons.cartPlus,
      size: 150,
      color: Color(0xFF578526),
    ),
    VWVitawisePage(),
    Icon(
      Icons.message,
      size: 150,
      color: Color(0xFF578526),
    ),
    Icon(
      Icons.person,
      size: 150,
      color: Color(0xFF578526),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF578526),
        title: Text(
          'VitaWise ไวต้าไวส์',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color(0xFF759e2e),
        items: [
          TabItem(icon: FontAwesomeIcons.jar, title: 'ผลิตภัณฑ์'),
          TabItem(icon: FontAwesomeIcons.cartPlus, title: 'การสั่งซื้อ'),
          TabItem(icon: Vitawise.vitawise, title: 'VitaWise'),
          TabItem(icon: Icons.message, title: 'ข่าวสาร'),
          TabItem(icon: Icons.person, title: 'บัญชี'),
        ],
        initialActiveIndex: _selectedIndex, //optional, default as 0
        onTap: (index) {
          setState((){
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
