import 'package:flutter/material.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/notification_layout/card_notification_widget.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        alignment: AlignmentDirectional.topStart,
        child: Container(

          child: ListView.separated(
              itemBuilder: (context, index) {return SizedBox(height: 1.h  ,);},
              separatorBuilder: (context, index) => cardNotificationMethod(),
              itemCount: 5),
        ));
  }
}
