import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFD000000),

      appBar: AppBar(
        backgroundColor: Color(0xFD000000),
        leading: Icon(
          Icons.keyboard_arrow_down_outlined,color: Colors.white,
        ),


        title: Column(
          children: [
            Text(
              'Playing From Playlist '
            ),


            Text(
                'New Songs '
            ),


          ],
        ),

      ),

      body: Column(
        children: [

        ],
      ),
    );
  }
}
