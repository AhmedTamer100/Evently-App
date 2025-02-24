import 'package:evenly_app/core/extensions/dimensions_ext.dart';
import 'package:evenly_app/core/theme/color_palette.dart';
import 'package:evenly_app/core/widgets/custom_elevated_button.dart';
import 'package:evenly_app/modules/layout/widgets/category_card.dart';
import 'package:evenly_app/modules/layout/widgets/custom_tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: ColorPalette.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            width: 1.width,
            height: 0.27.height,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                              fontSize: 16,
                              color: ColorPalette.white,
                            ),
                          ),
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 24,
                              color: ColorPalette.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset("assets/icons/Sun.svg"),
                      8.spaceHorizontal,
                      CustomElevatedButton(
                        title: 'EN',
                        onTab: () {},
                        borderRadius: 8,
                        titleColor: ColorPalette.primaryColor,
                        bgColor: ColorPalette.white,
                      ),
                    ],
                  ),
                  16.spaceVertical,
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: ColorPalette.white,
                      ),
                      4.spaceHorizontal,
                      const Text(
                        "Cairo , Egypt",
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorPalette.white,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  8.spaceVertical,
                  Expanded(
                    child: TabBar(
                      onTap: (value) {},
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      indicatorColor: Colors.transparent,
                      dividerColor: Colors.transparent,
                      tabs: const [
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: true,
                        ),
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: false,
                        ),
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: false,
                        ),
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: false,
                        ),
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: false,
                        ),
                        CustomTabBarItem(
                          title: 'Sports',
                          icon: Icons.sports,
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          16.spaceVertical,
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                return const CategoryCard();
              },
              separatorBuilder: (context, index) {
                return 16.spaceVertical;
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
