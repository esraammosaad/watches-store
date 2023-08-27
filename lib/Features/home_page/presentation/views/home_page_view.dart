import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/profile_view.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/custom_nav_bar.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/home_page_body.dart';

import 'favorite_view.dart';

class HomePageView extends StatefulWidget {
   HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
 int selectedIndex =0;
 List<Widget>screens=[const HomePageViewBody(),const FavoriteView(),const ProfileView()];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:screens[selectedIndex] ,
      bottomNavigationBar: CustomNavBar(onTap: (index){
        selectedIndex=index;
        print(selectedIndex);
        setState(() {

        });


      },index: selectedIndex),
    );
  }
}

