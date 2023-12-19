import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/UI/Music.dart';
import 'package:untitled4/UI/ex.dart';
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
          padding:  EdgeInsets.only(left: 10.w,top: 5.h),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                //    ------------------   Gridview 1  --------------------

            
            Text(' Played',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 10,),
            
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_)=>ex()));
                    },
                    child: SizedBox(height: 250,
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
                  ),


                //    ------------------   Listview 1  --------------------

                SizedBox(height: 10,),


                Text('Recently Played',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),
            
            SizedBox(height: 200.w,
              child: ListView(
                scrollDirection: Axis.horizontal,
            
                 children: List.generate(
                    8,
                        (index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 150.w,
                                height: 140.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),color: Colors.grey.shade700
                                ),
                                child:Image.asset('assets/img1.jpg',fit: BoxFit.fill,
            
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('data',style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      );
                      // SizedBox(width: 10.w,),
                    },
                  ),
              ),
            ),


                //    ------------------   Listview 2  --------------------

                SizedBox(height: 10,),

            
                Text('Recently Played',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),
            
                SizedBox(height: 200.w,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
            
                    children: List.generate(
                      8,
                          (index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 150.w,
                                  height: 140.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),color: Colors.grey.shade700
                                  ),
                                  child:Image.asset('assets/img1.jpg',fit: BoxFit.fill,
            
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('data',style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        );
                        // SizedBox(width: 10.w,),
                      },
                    ),
                  ),
                ),



                //    ------------------   Listview 3  --------------------

                SizedBox(height: 10,),




                Text('Recently Played',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),

                SizedBox(height: 200.w,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: List.generate(
                      8,
                          (index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 150.w,
                                  height: 140.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),color: Colors.grey.shade700
                                  ),
                                  child:Image.asset('assets/img1.jpg',fit: BoxFit.fill,

                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('data',style: TextStyle(color: Colors.white),),
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
      ),
    );
  }
}
