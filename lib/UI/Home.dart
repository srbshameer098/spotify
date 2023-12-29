import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/UI/Music.dart';
import 'package:untitled4/UI/ex.dart';

import '../Bloc/spotify_bloc.dart';
import '../Repository/ModelClass/spotify_model.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
late SpotifyModel response;
class _HomeState extends State<Home> {
  @override
  void initState() {
    BlocProvider.of<SpotifyBloc>(context).add(FetchSpotify(message: 'text'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFD000000),
      body: BlocBuilder<SpotifyBloc, SpotifyState>(
        builder: (context, state) {
          if (state is SpotifyblocLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is SpotifyblocError) {
            return Center(
              child: Text("ERROR",style: TextStyle(color: Colors.white),),
            );
          }
          if (state is SpotifyblocLoaded) {
            response = BlocProvider.of<SpotifyBloc>(context).spotifyModel;



            return SafeArea(
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
                              .push(MaterialPageRoute(builder: (_)=>ex(

                          )));
                        },
                        child: SizedBox(height: 250,
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 150 / 50,
                            shrinkWrap: true,
                            children: List.generate(
                              response.playlists!.items!.length,
                                  (index) {
                                return Container(
                                    width: 150.w,
                                    height: 70.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),color: Colors.grey.shade800
                                    ),
                                    child:Row(
                                      children: [
                                        Container( width: 60.w,height: 80.h,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(0),
                                                  bottomLeft: Radius.circular(10),
                                                  topRight: Radius.circular(0),
                                                  topLeft: Radius.circular(10)


                                              ),color: Colors.blueAccent
                                          ),
                                          child: Image.network(
                                            response.playlists!.items![index].data!.images!.items![0].sources![0].url.toString(),
                                            fit: BoxFit.fill,

                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(width: 80.w,
                                            child: Text(
                                              response.playlists!.items![index].data!.name.toString(),
                                              style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                                          ),
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


                      Text(
                        'podcasts',
                        style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),

                      SizedBox(height: 200.w,
                        child: ListView(
                          scrollDirection: Axis.horizontal,

                          children: List.generate(
                            response.podcasts!.items!.length,
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
                                        child:Image.asset(
                                          response.podcasts!.items![index].data!.coverArt!.sources![0].url.toString(),
                                          fit: BoxFit.fill,

                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(width: 150.w,height: 18.h,
                                      child: Text(
                                        response.podcasts!.items![index].data!.name.toString(),
                                        style: TextStyle(color: Colors.white),),
                                    ),
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


                      Text('Recently Played1',style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),

                      SizedBox(height: 200.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,

                          children: List.generate(
                            response.albums!.items![0].data!.coverArt!.sources!.length,
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
                                      ),child: Image(image: NetworkImage(response.albums!.items![index].data!.coverArt!.sources![index].url.toString()),),
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
                                        child:Image.asset(
                                          response.artists!.items![0].data!.visuals!.avatarImage!.sources![0].url.toString(),
                                          fit: BoxFit.fill,

                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      response.artists!.items![index].data!.profile!.name.toString(),
                                      style: TextStyle(color: Colors.white),),
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
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}