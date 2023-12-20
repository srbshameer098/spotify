import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class ex extends StatefulWidget {
  const ex({Key? key}) : super(key: key);

  @override
  State<ex> createState() => _exState();
}

List<String> music = [
  'assets/a.mp3',
  'assets/pokki_DJ.mp3',
];
List<String> img = [
  'assets/img1.jpg',
  'assets/img1.jpg',
];

String musicUrl = "assets/ab.mp3"; // Insert your music URL
String thumbnailImgUrl = "assets/img1.jpg"; // Insert your thumbnail URL
AudioPlayer player = AudioPlayer();
bool loaded = false;
bool playing = false;
int selectedIndex = 0;

class _exState extends State<ex> {
  void loadMusic() async {
    await player.setAsset(musicUrl);
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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Music Player"),
        ),
        body: Column(children: [
          const Spacer(
            flex: 2,
          ),
          SizedBox(
            height: 600.h,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                        width: 375.w,
                        height: 350.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 1, color: Colors.grey),
                            color: Color(0xffffffff)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  img[index],
                                  height: 350,
                                  width: 350,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ]))
                  ],
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),

                  // ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: music.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //       return Container(
                  //         width: 375.w,
                  //         height: 350.h,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(16),
                  //             border: Border.all(width: 1,color: Colors.grey),
                  //             color: Color(0xffffffff)),
                  //         child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                  //             children:[
                  //           ClipRRect(
                  //           borderRadius: BorderRadius.circular(8),
                  //           child: Image.asset(
                  //             img[index],
                  //             height: 350,
                  //             width: 350,
                  //             fit: BoxFit.cover,
                  //           ),
                  //         ),
                  //
                  //
                  //
                  //        ] )
                  //       );
                  //   },
                  //
                  // ),
                ),
                const Spacer(),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: ProgressBar(
                                    progress: duration,
                                    total: player.duration ??
                                        const Duration(seconds: 0),
                                    buffered: bufferedDuration,
                                    timeLabelPadding: -1,
                                    timeLabelTextStyle: const TextStyle(
                                        fontSize: 14, color: Colors.black),
                                    progressBarColor: Colors.red,
                                    baseBarColor: Colors.grey[200],
                                    bufferedBarColor: Colors.grey[350],
                                    thumbColor: Colors.red,
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
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: loaded
                            ? () async {
                                if (player.position.inSeconds >= 10) {
                                  await player.seek(Duration(
                                      seconds: player.position.inSeconds - 10));
                                } else {
                                  await player.seek(const Duration(seconds: 0));
                                }
                              }
                            : null,
                        icon: const Icon(Icons.fast_rewind_rounded)),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
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
                            color: Colors.white,
                          )),
                    ),
                    IconButton(
                        onPressed: loaded
                            ? () async {
                                if (player.position.inSeconds + 10 <=
                                    player.duration!.inSeconds) {
                                  await player.seek(Duration(
                                      seconds: player.position.inSeconds + 10));
                                } else {
                                  await player.seek(const Duration(seconds: 0));
                                }
                              }
                            : null,
                        icon: const Icon(Icons.fast_forward_rounded)),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          )
        ]));
  }
}
