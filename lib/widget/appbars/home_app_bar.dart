import 'package:flutter/material.dart';
import 'package:infai_demo_web/constants/app_colors.dart';
import 'package:infai_demo_web/constants/app_const_assets.dart';
import 'package:infai_demo_web/constants/app_text_style.dart';
import 'package:infai_demo_web/constants/extension.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final void Function()? onTap;
  const HomeAppBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => throw UnimplementedError();
}

class _HomeAppBarState extends State<HomeAppBar> {
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  int selectedIndex = 0;
  int? hoverIndex;
  List<String> appbarTitle = <String>[
    'Home',
    "Tickets",
    'Trials',
    'Turf',
    'Contact',
    'Organisers',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: AppColors.blackColor,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(AppAssets.logo),
          if (context.isWebSiteScreen)
            Row(
              children: List.generate(appbarTitle.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MouseRegion(
                    onEnter: (_) => setState(() {
                      hoverIndex = index;
                      setState(() {});
                    }),
                    onExit: (_) => setState(() {
                      hoverIndex = null;
                      setState(() {});
                    }),
                    child: InkWell(
                      onTap: () {
                        selectedIndex = index;
                        setState(() {});
                      },
                      child: Text(
                        appbarTitle[index],
                        style: AppTextStyle.semiBold14.copyWith(
                            color: hoverIndex == index
                                ? AppColors.appColors
                                : selectedIndex == index
                                    ? AppColors.appColors
                                    : AppColors.whiteColor),
                      ),
                    ),
                  ),
                );
              }),
            ),
          if (context.isWebSiteScreen)
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.backgroundColor),
                  ),
                  child: Text(
                    "Sign In",
                    style: AppTextStyle.regular14
                        .copyWith(color: AppColors.whiteColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.backgroundColor),
                  ),
                  child: Text(
                    "Select Location",
                    style: AppTextStyle.regular14
                        .copyWith(color: AppColors.whiteColor),
                  ),
                ),
              ],
            ),
          if (!context.isWebSiteScreen)
            InkWell(
              onTap: widget.onTap,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.greyColor, width: 4),
                ),
                child: Icon(
                  Icons.menu,
                  color: AppColors.greyColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
