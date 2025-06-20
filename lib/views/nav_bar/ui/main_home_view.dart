
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../core/app_colors.dart';
import '../../favorite/ui/favorite_view.dart';
import '../../home/ui/home_view.dart';
import '../../profile/ui/profile_view.dart';
import '../../store/ui/store_view.dart';
import '../logic/nav_bar_cubit.dart';
import '../logic/nav_bar_state.dart';

class MainHomeView extends StatelessWidget {
  final List<Widget> views = [
    HomeView(),
    StoreView(),
    FavoriteView(),
    ProfileView(),
  ];

  MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = context.read<NavBarCubit>();
          return Scaffold(
            body: SafeArea(
              child: views[cubit.currentIndex],
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 8,
                ),
                child: GNav(
                  onTabChange: (index) {
                    cubit.changeCurrentIndex(index);
                  },
                  selectedIndex: cubit.currentIndex,
                  rippleColor: AppColors.kPrimaryColor,
                  hoverColor: AppColors.kPrimaryColor,
                  gap: 8,
                  activeColor: Colors.white,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: AppColors.kPrimaryColor,
                  color: AppColors.kGreyColor,
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.store,
                      text: 'Store',
                    ),
                    GButton(
                      icon: Icons.favorite,
                      text: 'Favorite',
                    ),
                    GButton(
                      icon: Icons.person,
                      text: 'Profile',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
