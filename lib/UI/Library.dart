import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFD000000),
      appBar: AppBar(
          backgroundColor: Color(0xFD000000),
        leading: Padding(
          padding:  EdgeInsets.all( 10.w),
          child: CircleAvatar(
            radius: 20.r,child: Text('s',style: TextStyle(fontSize: 20.sp),),
            backgroundColor: Color(0xF59068CE),
          ),
        ),
        title: Text('Your Library',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 20.w),
            child: Icon(Icons.search_outlined,color: Colors.white,size: 28,),
          ),Padding(
            padding:  EdgeInsets.only(right: 40.w),
            child: Icon(Icons.add,color: Colors.white,size: 28,),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            SizedBox(height: 10,),


            Text('Pinned Libraries',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),

            Expanded(
              child: ListView(


                children: List.generate(
                  15,
                      (index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 340.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),color: Colors.transparent
                              ),
                              child:Row(
                                children: [
                                  Image.asset('assets/img1.jpg',fit: BoxFit.fill,

                                  ),
                                  SizedBox(width: 230.w,
                                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 12.w),
                                          child: Text('Music Played',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left: 12.w),
                                          child: Text('Playlist',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              )
                          ),
                        ),

                      ],
                    );
                    // SizedBox(width: 10.w,),
                  },
                ),
              ),
            ),






          ],
        ),
      ),

    );
  }
}
