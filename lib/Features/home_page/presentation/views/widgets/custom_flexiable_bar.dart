import 'package:flutter/material.dart';
import 'package:watsh_store/Features/home_page/presentation/views/widgets/page_indicator.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'custom_page_view.dart';
import 'custom_search_bar.dart';
class FlexibleBar extends StatelessWidget {
  const FlexibleBar({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Text(
                'Hello,',
                style: Styles.fontSize24
                    .copyWith(color: const Color(0x80000000)),
              ),
              Text(
                'Rebprt Nicklas',
                style: Styles.fontSize24.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomSearchBar(),
              const SizedBox(
                height: 25,
              ),
              CustomPageView(controller: controller),
              Center(
                child: PageIndicator(controller: controller),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

