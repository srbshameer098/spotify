import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFD000000),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

Text('Recently Played',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),

                SizedBox(height: 250,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 150 / 50,
                    shrinkWrap: true,
                    children: List.generate(
                    8,
                          (index) {
                        return Container(
                          width: 150.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),color: Colors.grey.shade700
                          ),
                          child:Row(
                            children: [
                              Container( width: 50.w,height: 80.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(0),
                                        bottomLeft: Radius.circular(10),
                                        topRight: Radius.circular(0),
                                        topLeft: Radius.circular(10)


                                    ),color: Colors.blueAccent
                                ),
                                child: Image.asset('assets/img1.jpg',fit: BoxFit.fill,

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('data',style: TextStyle(color: Colors.white),),
                              ),
                            ],
                          )
                        );
                      },
                    ),
                  ),
                ),


              Text('Recently Played',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),


            ],
          ),
        ),
      ),
    );
  }
}
