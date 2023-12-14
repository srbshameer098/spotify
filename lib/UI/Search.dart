import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/UI/On_search.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}
List<String> title = [
  'Wrapped',
  'Music',
  'Podcasts',
  'Live Events',
  'Made For You',
  'New Releases',
  '2023 in Music',
  '2023 in Podcasts',
  'Hindi',
  'Punjabi',
  'Tamil',
  'Telugu',
  'Podcast Charts',
  'Podcast New Releases',
  'Video Podcasts',
  'Business & Technology',
  'Charts',
  'Happy Christmas',
  'Pop',
  'Indie',
];


class _SearchState extends State<Search> {

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
  title: Text('Search',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
  actions: [
    Padding(
      padding:  EdgeInsets.only(right: 40.w),
      child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
    )
  ],
),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(height: 10.h,),
              GestureDetector(
                onTap: (){

                  Navigator.of(context)
                      .push(MaterialPageRoute(builder:(_) =>On_search()
                  ));
                },
                child: Center(
                  child: Container(  width: 350.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),color: Colors.white ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                     Icon(Icons.search_outlined,size: 30.sp,color: Colors.black,),
                         SizedBox(width: 5,),
                         Text(
                             " Artistas, canciones o podcasts ?",
                             style: TextStyle(
                               color: Colors.grey.shade700,
                               fontSize: 18.sp,
                               fontWeight: FontWeight.w600,
                             )
                         )
                       ],
                     ),
                   ),
                  ),
                ),
              ),


              //    ------------------   Listview 1  --------------------

              SizedBox(height: 30,),


              Text('Recently Played',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),

              SizedBox(height: 300.w,
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
                                width: 120.w,
                                height: 180.h,
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
                            child: Text(
                              title[index],
                              style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      );
                      // SizedBox(width: 10.w,),
                    },
                  ),
                ),
              ),





              //    ------------------   Gridview 1  --------------------


              Text(' Played',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),

              SizedBox(height: 20*90/2,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 100 / 50,
                  shrinkWrap: false,
                  physics: NeverScrollableScrollPhysics(),

                  children: List.generate(
                    20,
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
                              Image.asset('assets/img1.jpg',fit: BoxFit.fill,

                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(width: 68.w,
                                  child: Text(
                                   title[index]
                                    ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                                ),
                              ),
                            ],
                          )
                      );
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
