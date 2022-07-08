import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VWVitawisePage extends StatefulWidget {
  const VWVitawisePage({Key? key}) : super(key: key);

  @override
  State<VWVitawisePage> createState() => _VWVitawisePageState();
}

class _VWVitawisePageState extends State<VWVitawisePage> {
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'hYEpySXlJo8',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: 'ZoSk-1oNSHA',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Image border
                    child: Image.asset(
                      'assets/images/vw01.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'VitaWise ไวต้าไวส์',
                  style: TextStyle(
                    color: Color(0xFF578526),
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30.0,
                    left: 30.0,
                    top: 10.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    'ผลิตภัณฑ์เสริมอาหารเพื่อสุขภาพจากประเทศออสเตรเลีย ที่นำสารสกัดจากสมุนไพรและสารสกัดธรรมชาติหลากหลายชนิดซึ่งเป็นที่ยอมรับและมีประสิทธิภาพเพื่อมาผสมผสานเป็นสูตรผลิตภัณฑ์ บวกกับกระบวนการผลิตด้วยเทคโนโลยีการผลิตที่ทันสมัย ซึ่งประเทศออสเตรเลียนั้นมีชื่อเสียงอย่างมากในระดับโลก ในด้านวัตถุดิบที่มีคุณภาพสูง มีเทคนิคการผลิตชั้นเยี่ยมด้วยเครื่องจักรที่ทันสมัย รวมถึงมีการกำหนดมาตรฐานการผลิตที่เข้มงวด',
                    style: TextStyle(
                      color: Color(0xFF578526),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0), // Image border
                      child: Image.asset(
                        'assets/images/vw_product1.png',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.15,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0), // Image border
                      child: Image.asset(
                        'assets/images/vw_product2.png',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.18,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0), // Image border
                      child: Image.asset(
                        'assets/images/vw_product3.png',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: YoutubePlayer(
                    controller: _controller1,
                    liveUIColor: Colors.amber,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'มาตรฐานการรับรอง',
                  style: TextStyle(
                    color: Color(0xFF578526),
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30.0,
                    left: 30.0,
                    top: 10.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    'ไวต้าไวส์ (VitaWise) ใส่ใจทุกรายละเอียด การใช้โรงงานผลิตที่มีมาตรฐานสากล ขั้นตอนการผลิตที่เข้มงวด ผ่านการเทสวัตถุดิบทั้งก่อนผลิตและหลังผลิต นอกจากนั้นยังผ่านการรับรองทั้งหน่วยงานรัฐบาลออสเตรเลีย และ รัฐบาลไทย ด้วยประสบการณ์การทำงานในอุตสาหกรรมนี้มานานมากกว่า 10 ปี เรามั่นใจว่า ผลิตภัณฑ์ในแบรนด์ไวต้าไวส์ ใส่่ใจผู้บริโภคอย่างแท้จริง',
                    style: TextStyle(
                      color: Color(0xFF578526),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (_) => imageDialog(
                        'หนังสือรับรอง Certificate of Pharmaceutical Products (CPP) ซึ่งเป็นหนังสือรับรองผลิตภัณฑ์ยาที่ออกให้โดยองค์กรรัฐที่มีหน้าที่รับผิดชอบในประเทศผู้ส่งออก เพื่อแสดงว่าผลิตภัณฑ์ดังกล่าวได้ผ่านการประเมินคุณภาพ ประสิทธิผล และความปลอดภัย ',
                        'assets/images/vw_cer1.png',
                        context,
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Image border
                    child: Image.asset(
                      'assets/images/vw_cer1.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.30,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (_) => imageDialog(
                            'ผ่านการจดแจ้งผลิตภัณฑ์จาก Therapeutic Goods Administration (TGA) ซึ่งเป็นหน่วยงานของรัฐบาลออสเตรเลีย ที่ดูแลเรื่องคุณภาพ ความปลอดภัย และประสิทธิผลของผลิตภัณฑ์ด้านสุขภาพในมาตรฐานระดับสากล',
                            'assets/images/vw_cer2.png',
                            context,
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0), // Image border
                        child: Image.asset(
                          'assets/images/vw_cer2.png',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.30,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (_) => imageDialog(
                            'ผลิตภายใต้มาตรฐานการผลิต GMP ของประเทศออสเตรเลีย ที่ช่วยให้มั่นใจได้ว่า "ไวตาร์ไวส์ (VitaWise)" ได้ให้ความสำคัญอย่างมากกับมาตรฐานการผลิต ตั้งแต่เริ่มต้นวางแผนการผลิต ระบบควบคุมตั้งแต่วัตถุดิบ ระหว่างการผลิต ผลิตภัณฑ์สําเร็จรูป การจัดเก็บ การควบคุมคุณภาพ และ การขนส่งจนถึงผู้บริโภค',
                            'assets/images/vw_cer3.png',
                            context,
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0), // Image border
                        child: Image.asset(
                          'assets/images/vw_cer3.png',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.30,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (_) => imageDialog(
                            'ได้รับเครื่องหมาย Australian Made ซึ่งเป็นเครื่องหมายที่บ่งบอกว่าเป็นผลิตภัณฑ์ที่ผลิตจากประเทศออสเตรเลียอย่างแท้จริง',
                            'assets/images/vw_cer4.png',
                            context,
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0), // Image border
                        child: Image.asset(
                          'assets/images/vw_cer4.png',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.30,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (_) => imageDialog(
                            'นำเข้าประเทศไทยโดยผ่านการรับรองจากองค์การอาหารและยาของประเทศไทย TFDA',
                            'assets/images/vw_cer5.png',
                            context,
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0), // Image border
                        child: Image.asset(
                          'assets/images/vw_cer5.png',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.30,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'การผลิต',
                  style: TextStyle(
                    color: Color(0xFF578526),
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30.0,
                    left: 30.0,
                    top: 10.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    'ผลิตภัณฑ์ทุกตัวของไวต้าไวส์ (VitaWise) ผลิตที่โรงงานเฟิร์นโกรฟ FERNGROVE PHARMACEUTICALS AUSTRALIA หรือ FPA ซึ่งเป็นโรงงานผู้ผลิตที่รับผลิตสินค้าให้กับแบรนด์ชั้นนำของประเทศออสเตรเลียหลากหลายแบรนด์ โดยมีฐานที่ตั้งการผลิตอยู่ที่ซิดนีย์ ประเทศออสเตรเลีย และมีใบอนุญาตการผลิตจาก TGA (Therapeutic Goods Administration) โดยขั้นตอนและกระบวนการผลิตทั้งหมดดำเนินขึ้นภายใต้กฎข้อบังคับที่เข้มงวดตามมาตรฐาน GMP ที่ออกโดยรัฐบาลประเทศออสเตรเลีย…..ปลอดภัย มั่นใจชัวร์!',
                    style: TextStyle(
                      color: Color(0xFF578526),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: YoutubePlayer(
                    controller: _controller2,
                    liveUIColor: Colors.amber,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget imageDialog(text, path, context) {
    return Dialog(
      // backgroundColor: Colors.transparent,
      // elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'มาตรฐานการรับรอง',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close_rounded),
                      color: Color(0xFF578526),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                bottom: 15.0,
              ),
              child: Column(
                children: [
                  Image.asset(
                    '$path',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.35,
                  ),
                  Text(
                    '${text}',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
