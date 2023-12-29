import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio/just_audio.dart';

import '../Bloc/spotify_bloc.dart';
import 'Home.dart';

class ex extends StatefulWidget {

  const ex({Key? key,


  }) : super(key:key );

  @override
  State<ex> createState() => _exState();
}

List<String> music = [
  'assets/a.mp3',
  // 'assets/ab.mp3',
  'assets/abc.mp3',
];
List<String> img = [
  'assets/img4.jpg',
  'assets/img3.jpg',
];
late AudioPlayer _audioPlayer;
// Insert your music URL
// Insert your thumbnail URL
AudioPlayer player = AudioPlayer();
bool loaded = false;
bool playing = false;
int selectedIndex = 1;

class _exState extends State<ex> {
  final controller = CarouselController();




  void loadMusic() async {
    await player.setAudioSource(AudioSource.uri(Uri.parse(
       " 2GXXZFUxYg2LvG8SR0byOE")));
    print("hello" + selectedIndex.toString());
    setState(() {
      loaded = true;
    });
  }

  void playMusic() async {
    setState(() {
      playing = true;
    });
    await player.play();
  }

  void pauseMusic() async {
    setState(() {
      playing = false;
    });
    await player.pause();
  }

  @override
  void initState() {
    loadMusic();
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpotifyBloc, SpotifyState>(
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


        return Scaffold(
          backgroundColor: Color(0xFD000000),
          appBar: AppBar(
            backgroundColor: Color(0xFD000000),
            leading: GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: Center(
              child: Column(
                children: [
                  Text(
                    'Playing From Playlist ',
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  ),
                  Text(
                      response.playlists!.items![0].data!.name.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            actions: [
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  width: 300.w,
                  height: 400.h,
                  child: CarouselSlider.builder(
                    carouselController: controller,
                    options: CarouselOptions(
                      initialPage: selectedIndex,
                      onPageChanged: (index, value) {
                        setState(() {
                          selectedIndex = index;
                        });
                        print("img" + selectedIndex.toString());
                      },
                      height: 500.0,
                      autoPlay: false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: false,
                      viewportFraction: 1,
                    ),
                    itemCount:  response.tracks!.items!.length,
                    itemBuilder: (BuildContext context, int index,
                        int realIndex) {
                      print("real" + realIndex.toString());
                      print("index" + index.toString());

                      return Container(
                        height: 400.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 0, color: Colors.grey),
                            color: Colors.black),
                        child: Padding(
                          padding: EdgeInsets.only(right: 0.w),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(

                                    response.users!.items![index].data!.image!.largeImageUrl.toString(),
                                    // img[realIndex],
                                     fit: BoxFit.fill,
                                    // height: 397.h,
                                    // width: 300.w,
                                  ),
                                ),
                              ]),

                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, top: 40.sp, bottom: 15
                      .h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                  response.tracks!.items![0].data!.albumOfTrack!.name.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 200.w,height: 18.h,
                            child: Text(
                                 response.albums!.items![1].data!.name.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70.w,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: StreamBuilder(
                      stream: player.positionStream,
                      builder: (context, snapshot1) {
                        final Duration duration = loaded
                            ? snapshot1.data as Duration
                            : const Duration(seconds: 0);
                        return StreamBuilder(
                            stream: player.bufferedPositionStream,
                            builder: (context, snapshot2) {
                              final Duration bufferedDuration = loaded
                                  ? snapshot2.data as Duration
                                  : const Duration(seconds: 0);

                              return SizedBox(
                                height: 30,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                                  child: ProgressBar(
                                    progress: duration,
                                    total: player.duration ??
                                        const Duration(seconds: 0),
                                    buffered: bufferedDuration,
                                    timeLabelPadding: -1,
                                    timeLabelTextStyle: const TextStyle(
                                        fontSize: 14, color: Colors.white),

                                    progressBarColor: Colors.white,
                                    baseBarColor: Colors.grey[700],
                                    bufferedBarColor: Colors.grey[400],
                                    thumbColor: Colors.white,
                                    onSeek: loaded
                                        ? (duration) async {
                                      await player.seek(duration);
                                    }
                                        : null,
                                  ),
                                ),
                              );
                            });
                      }),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shuffle_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: loaded
                              ? () async {
                            controller.previousPage();
                            if (selectedIndex > 0) {
                              setState(() {
                                selectedIndex = selectedIndex - 1;
                              });
                              print("adfront" + selectedIndex.toString());
                            }
                            if (player.position.inSeconds >= 10) {
                              await player.seek(Duration(
                                  seconds: player.position.inSeconds - 10));
                            } else {
                              await player.seek(const Duration(seconds: 0));
                            }
                          }
                              : null,
                          icon: const Icon(
                            Icons.fast_rewind_rounded,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: IconButton(
                            onPressed: loaded
                                ? () {
                              if (playing) {
                                pauseMusic();
                              } else {
                                playMusic();
                              }
                            }
                                : null,
                            icon: Icon(
                              playing ? Icons.pause : Icons.play_arrow,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      IconButton(
                          onPressed: loaded
                              ? () async {
                            controller.nextPage();
                            if (selectedIndex < img.length - 1) {
                              setState(() {
                                selectedIndex = selectedIndex - 1;
                              });
                              print("adback" + selectedIndex.toString());
                            }
                            if (player.position.inSeconds + 10 <=
                                player.duration!.inSeconds) {
                              await player.seek(Duration(
                                  seconds: player.position.inSeconds + 10));
                            } else {
                              await player.seek(const Duration(seconds: 0));
                            }
                          }
                              : null,
                          icon: const Icon(
                            Icons.fast_forward_rounded,
                            color: Colors.white,
                            size: 25,
                          )),
                      const SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.repeat_outlined,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Icon(
                      Icons.devices,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: 270.w,
                    ),
                    Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ),
        );

      } else {
        return SizedBox();
      }
      },
    );
  }
}
