import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/repository/all_products_repository.dart';
import 'package:shop/data/repository/categories_repository.dart';
import 'package:shop/data/services/network/dio/dio_helper.dart';
import 'package:shop/firebase_options.dart';
import 'package:shop/observer.dart';
import 'package:shop/utils/dependancy_injection.dart' ;
import 'package:shop/utils/go_router.dart';

import 'package:shop/utils/themes.dart';
import 'package:shop/view/screens/auth_screens/board_screen.dart';
import 'package:shop/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
import 'package:sizer/sizer.dart';

void main() async{
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized(); //

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
    BlocProvider<MainCubit>(create: (context) => MainCubit()),
    BlocProvider<AuthCubit>(create: (context) => AuthCubit()),
    ],

      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          locale: const Locale("ar"),
          title: 'Mosti Shop1',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: kBackGroundColor,
            appBarTheme: AppBarTheme(backgroundColor: kBackGroundColor,
                elevation: 0,
                iconTheme: IconThemeData(color: kPrimaryColor)),

            colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
            useMaterial3: true,
          ),

        );
      }),
    );
    //

    //
  }
}
