import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/data/repository/all_products_repository.dart';
import 'package:shop/data/services/network/dio/dio_helper.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/home_layout/home_body_widget.dart';
import 'package:shop/view/screens/auth_screens/board_screen.dart';
import 'package:shop/view/screens/auth_screens/log_in_screen.dart';
import 'package:shop/view/screens/bottom_nav_bar_screens/main_screen.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';

abstract class AppRouter {
  late AllProductRepository allPruductRepository;
  late MainCubit mainCubit;

  AppRouter() {
    // allPruductRepository = AllPruductRepository(DioHelper());
    // mainCubit = MainCubit(allPruductRepository);
  }

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return BoardScreen();
        }),
    GoRoute(
        path: '/homeScreen',
        builder: (BuildContext context, GoRouterState state) {
          return  MainScreen();
        }),
    GoRoute(
        path: '/logInScreen',
        builder: (BuildContext context, GoRouterState state) {
          return const LogInScreen();
        }),
  ]);
}
