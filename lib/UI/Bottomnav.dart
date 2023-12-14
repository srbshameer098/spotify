import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/UI/Library.dart';
import 'package:untitled4/UI/Search.dart';

import 'Home.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}
final screens=[ Home(),Search(),Library()];
int currentIndex=0;
class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (

      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black,currentIndex: currentIndex,onTap: (index){
        setState(() {
          currentIndex=index;
        });
      },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.white,size: 30.sp,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined,color: Colors.white,), label: "Shop"),
          BottomNavigationBarItem(icon:  Icon(Icons.list_alt,color: Colors.white), label: "Me",),

        ],
      ),body: screens[currentIndex],

    );
  }
}
