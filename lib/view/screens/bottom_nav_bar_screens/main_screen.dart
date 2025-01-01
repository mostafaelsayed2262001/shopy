import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/utils/textUtils.dart';
import 'package:shop/utils/themes.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/category_layout/category_body_widget.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/home_layout/home_body_widget.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/home_layout/home_drawer_layout.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/notification_layout/notification_body_widget.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/setting_layout/setting_body_widget.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  List<Widget> listWidget = <Widget>[
    const HomeScreen(),
    const CategoryScreen(),
    const NotificationScreen(),
    const SettingScreen()
  ];
  List<Widget> listTitle = <Widget>[
    const SizedBox(),
    const TextUtils(text: "Categories"),
    const TextUtils(text: "Notifications"),
    const TextUtils(text: "Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // drawer: index==0? drawerHomeWidget():null,

        appBar: AppBar(
          centerTitle: true,
          title: listTitle[index],
          leading: index == 0
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  padding: EdgeInsets.only(right: 10),
                )
              : const SizedBox(),
        ),
        body: listWidget[index],
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: GoogleFonts.almarai(
            textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: kPrimaryColor,
                overflow: TextOverflow.ellipsis),
          ),
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/categoryAssets/categort_icon.png",
                  color: index == 1 ? kPrimaryColor : Colors.grey,
                ),
                label: "Categories"),
            const BottomNavigationBarItem(

                icon: Icon(Icons.notifications_active_outlined),
                label: "Notification" ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          currentIndex: index,
          backgroundColor: kBackGroundColor,
          onTap: (value) {

            if(index==0){
              // MainCubit.get(context).getAllPruducts();

            }
            else if(index==1){

              MainCubit.get(context).getAllCategories();
            }
            setState(() {
              index = value;
            });
          },
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}


