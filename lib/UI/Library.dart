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
    );
  }
}
