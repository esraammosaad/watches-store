import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/profile_view.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/custom_nav_bar.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/home_page_body.dart';

import 'favorite_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  PageController? pageController = PageController();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          selectedIndex = index;
          setState(() {});
        },
        children: [
          HomePageViewBody(),
          const FavoriteView(),
          const ProfileView()
        ],
      ),
      bottomNavigationBar: CustomNavBar(
          onTap: (index) {
            pageController!.jumpToPage(index);
          },
          index: selectedIndex),
    );
  }
}
