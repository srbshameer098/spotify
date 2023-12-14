import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class On_search extends StatefulWidget {
  const On_search({Key? key}) : super(key: key);

  @override
  State<On_search> createState() => _On_searchState();
}

class _On_searchState extends State<On_search> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFD000000),
    
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 15.w,top: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(height: 20.h,),

              Container(
                width: 350.w,
                height: 70.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),color: Color(0xFD4B4949)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                              Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 28.sp,
                              ),
                          SizedBox(width: 10.w,),
                      SizedBox(width: 280.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What do you Want to Listen to ?',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                              fontStyle: FontStyle.italic,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),



              //    ------------------   Listview 1  --------------------

              SizedBox(height: 10,),


              Text('Recent Searches',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
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
                                            child: Text('Music',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 12.w),
                                            child: Text('Playlist',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(Icons.close,color: Colors.grey,)
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
      ),



    );
  }
}
