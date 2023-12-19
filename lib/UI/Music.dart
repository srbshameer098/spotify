import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}



class _MusicState extends State<Music> {



  double Value = 20;





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFD000000),

      appBar: AppBar(
        backgroundColor: Color(0xFD000000),
        leading: Icon(
          Icons.keyboard_arrow_down_outlined,color: Colors.white,
        ),


        title: Center(
          child: Column(
            children: [
              Text(
                'Playing From Playlist ',style: TextStyle(color: Colors.white,fontSize: 12.sp),
              ),


              Text(
                  'New Songs ',style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500)
              ),


            ],
          ),
        ),

        actions: [

          Icon(Icons.more_horiz,color: Colors.white,),
          SizedBox(width: 20.w,),
        ],

      ),

      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 0.w,top: 10.h),
          child: Column(
            children: [


              // -----------------------------  Container 1  ---------------------------------


              Center(
                child: Container(
                  width: 300.w,
                  height: 400.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),color: Colors.grey.shade700
                  ),
                ),
              ),


              Padding(
                padding:  EdgeInsets.only(left:28.w,top: 40.sp),
                child: Row(
                  children: [

                    Column(
                      children: [
                        Text(
                          'Playing From Playlist ',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w700),
                        ),


                        Text(
                            'Playing From Playlist New Songs ',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w500)
                        ),
                      ],
                    ),

                    
                    SizedBox(width: 100.w,),
                    Icon(Icons.favorite_border,color: Colors.grey,)
                    
                  ],
                ),
              ),
SizedBox(height: 10.h,),

              Slider(
                min: 0.0,
                max: 100.0,
                activeColor: Colors.white,
                inactiveColor: Colors.grey.shade900,
                thumbColor: Colors.white,
                value: Value,
                onChanged: (value) {
                  setState(() {
                    Value = value;
                  });
                },
              ),

              Padding(
                padding:  EdgeInsets.only(left: 22.w,top: 1.h),
                child: Row(
                  children: [

                    Text(
                      '00:00',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w500),
                    ),
SizedBox(width: 260.w,),

                    Text(
                        '00:00',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w500)
                    ),

                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 22.w,top: 10.h),
                child: Row(
                  children: [

                    Icon(Icons.shuffle_outlined,color: Colors.white,size: 30,),
                    SizedBox(width: 35.w,),

                    Icon(Icons.skip_previous,color: Colors.white,size: 35,),
                    SizedBox(width: 20.w,),


                    TextButton(
                      onPressed: () async{
                        final player = AudioPlayer();
                  await      player.play(AssetSource('pokki_DJ.mp3'));
                      },
                      child: CircleAvatar(
                          radius: 35,backgroundColor: Colors.white,
                          child: Icon(Icons.pause,color: Colors.black,size: 35,)),
                    ),


                    SizedBox(width: 20.w,),

                    Icon(Icons.skip_next,color: Colors.white,size: 35,),

                    SizedBox(width: 35.w,),

                    Icon(Icons.repeat_outlined,color: Colors.white,size: 35,)
                  ],
                ),
              ),

              Row(
                children: [

                  SizedBox(width: 22.w,),

                  Icon(Icons.devices,color: Colors.white,size: 22,),

                  SizedBox(width: 280.w,),

                  Icon(Icons.share_outlined,color: Colors.white,size: 22,)

                ],
              )

            ],
          ),
        ),
      ),
    );
  }


}
