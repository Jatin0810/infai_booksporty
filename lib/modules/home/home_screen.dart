import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infai_demo_web/constants/app_colors.dart';
import 'package:infai_demo_web/constants/app_const_assets.dart';
import 'package:infai_demo_web/constants/app_text_style.dart';
import 'package:infai_demo_web/constants/extension.dart';
import 'package:infai_demo_web/modules/home/home_screen_model.dart';
import 'package:infai_demo_web/modules/home/home_screen_presenter.dart';
import 'package:infai_demo_web/modules/home/home_screen_view.dart';
import 'package:infai_demo_web/widget/footer/footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements HomeScreenView {
  late HomeScreenModel model;
  HomeScreenPresenter presenter = BasicHomeScreenPresenter();

  @override
  void initState() {
    presenter.updateView = this;
    super.initState();
  }

  @override
  void refreshModel(HomeScreenModel homeModel) {
    model = homeModel;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: context.isWebSiteScreen
                      ? 250
                      : MediaQuery.of(context).size.width * 0.35,
                  aspectRatio: 1,
                  scrollPhysics: NeverScrollableScrollPhysics(),
                  viewportFraction: 1),
              items: model.bannerImageList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(i), fit: BoxFit.fill),
                      ),
                      child: Text(
                        "Book Your \nTickets, Trails and Turfs!!!",
                        style: AppTextStyle.black34.copyWith(
                            fontSize: context.isWebSiteScreen ? 64 : 30,
                            color: AppColors.backgroundColor),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Featured Events",
                style: AppTextStyle.black40.copyWith(
                    fontSize: context.isWebSiteScreen ? 40 : 20,
                    color: AppColors.backgroundColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      model.selectedEventIndex = 0;
                      setState(() {});
                    },
                    child: Container(
                      height: context.isWebSiteScreen ? 60 : 40,
                      width: context.isWebSiteScreen ? 160 : 100,
                      decoration: BoxDecoration(
                        color: model.selectedEventIndex == 0
                            ? AppColors.appColors
                            : null,
                        border: Border(
                          bottom: model.selectedEventIndex == 0
                              ? BorderSide.none
                              : BorderSide(color: AppColors.whiteColor),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Events",
                          style: AppTextStyle.semiBold24.copyWith(
                              fontSize: context.isWebSiteScreen ? 24 : 14,
                              color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      model.selectedEventIndex = 1;
                      setState(() {});
                    },
                    child: Container(
                      height: context.isWebSiteScreen ? 60 : 40,
                      width: context.isWebSiteScreen ? 160 : 100,
                      decoration: BoxDecoration(
                        color: model.selectedEventIndex == 1
                            ? AppColors.appColors
                            : null,
                        border: Border(
                          bottom: model.selectedEventIndex == 1
                              ? BorderSide.none
                              : BorderSide(color: AppColors.whiteColor),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Trials",
                          style: AppTextStyle.semiBold24.copyWith(
                              fontSize: context.isWebSiteScreen ? 24 : 14,
                              color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: context.isWebSiteScreen ? 60 : 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            customCarouselSliderWidget(model.selectedEventIndex == 0
                ? model.eventImageList
                : model.trialImageList),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Upcoming Events",
                style: AppTextStyle.black40.copyWith(
                    fontSize: context.isWebSiteScreen ? 40 : 20,
                    color: AppColors.backgroundColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      model.selectedUpcomingEventIndex = 0;
                      setState(() {});
                    },
                    child: Container(
                      height: context.isWebSiteScreen ? 60 : 40,
                      width: context.isWebSiteScreen ? 160 : 100,
                      decoration: BoxDecoration(
                        color: model.selectedUpcomingEventIndex == 0
                            ? AppColors.appColors
                            : null,
                        border: Border(
                          bottom: model.selectedUpcomingEventIndex == 0
                              ? BorderSide.none
                              : BorderSide(color: AppColors.whiteColor),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Events",
                          style: AppTextStyle.semiBold24.copyWith(
                              fontSize: context.isWebSiteScreen ? 24 : 14,
                              color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      model.selectedUpcomingEventIndex = 1;
                      setState(() {});
                    },
                    child: Container(
                      height: context.isWebSiteScreen ? 60 : 40,
                      width: context.isWebSiteScreen ? 160 : 100,
                      decoration: BoxDecoration(
                        color: model.selectedUpcomingEventIndex == 1
                            ? AppColors.appColors
                            : null,
                        border: Border(
                          bottom: model.selectedUpcomingEventIndex == 1
                              ? BorderSide.none
                              : BorderSide(color: AppColors.whiteColor),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Trials",
                          style: AppTextStyle.semiBold24.copyWith(
                              fontSize: context.isWebSiteScreen ? 24 : 14,
                              color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: context.isWebSiteScreen ? 60 : 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            customCarouselSliderWidget(model.selectedUpcomingEventIndex == 0
                ? model.eventImageList
                : model.trialImageList),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Book Turfs",
                    style: AppTextStyle.black40.copyWith(
                        fontSize: context.isWebSiteScreen ? 40 : 20,
                        color: AppColors.backgroundColor),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.backgroundColor),
                    ),
                    child: Text(
                      "Select Location",
                      style: AppTextStyle.semiBold24.copyWith(
                          fontSize: context.isWebSiteScreen ? 24 : 14,
                          color: AppColors.whiteColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      height: context.isWebSiteScreen ? 60 : 40,
                      width: context.isWebSiteScreen ? 160 : 100,
                      decoration: BoxDecoration(
                        color: AppColors.appColors,
                      ),
                      child: Center(
                        child: Text(
                          "Turfs",
                          style: AppTextStyle.semiBold24.copyWith(
                              fontSize: context.isWebSiteScreen ? 24 : 14,
                              color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: context.isWebSiteScreen ? 60 : 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            customCarouselSliderWidget(model.trufImageList),
            SizedBox(
              height: 30,
            ),
            Container(
              color: AppColors.whiteColor,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Sports",
                    style: AppTextStyle.semiBold16,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Categories",
                    style: AppTextStyle.black40
                        .copyWith(color: AppColors.appColors),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: model.supportCategoriesList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: context.isWebSiteScreen ? 1.2 : 2,
                          crossAxisCount: context.isWebSiteScreen ? 6 : 1),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            model.supportCategoriesList[index]['isSvg'] == false
                                ? Image.asset(
                                    model.supportCategoriesList[index]['image'],
                                    height: 70,
                                  )
                                : SvgPicture.asset(
                                    model.supportCategoriesList[index]['image'],
                                    height: 70,
                                  ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              model.supportCategoriesList[index]['title'],
                              style: AppTextStyle.semiBold16,
                            )
                          ],
                        );
                      })
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              color: AppColors.lightGrey,
              child: Column(
                children: [
                  Text(
                    "Our",
                    style: AppTextStyle.black26,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Collaborators & Allies",
                    style: AppTextStyle.black36.copyWith(
                        fontSize: context.isWebSiteScreen ? 36 : 26,
                        color: AppColors.appColors),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              color: AppColors.whiteColor,
              child: context.isWebSiteScreen
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(model.alliesList.length, (index) {
                        return Image.asset(
                          model.alliesList[index],
                          height: 60,
                        );
                      }),
                    )
                  : Column(
                      children: List.generate(model.alliesList.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Image.asset(
                            model.alliesList[index],
                            height: 40,
                          ),
                        );
                      }),
                    ),
            ),
            Container(
              color: AppColors.lightGrey,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Text(
                    "Why Us?",
                    style: context.isWebSiteScreen
                        ? AppTextStyle.regular16
                        : AppTextStyle.black26,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "One Stop Shop for all your Sports Needs!",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.black36.copyWith(
                        fontSize: context.isWebSiteScreen ? 36 : 26,
                        color: AppColors.appColors),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: model.whyUsList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: context.isWebSiteScreen ? 3 : 1),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.whiteColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                model.whyUsList[index]['image'],
                                height: context.isWebSiteScreen ? 70 : 40,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                model.whyUsList[index]['header'],
                                style: context.isWebSiteScreen
                                    ? AppTextStyle.bold20
                                    : AppTextStyle.black16,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                model.whyUsList[index]['sub_header'],
                                style: context.isWebSiteScreen
                                    ? AppTextStyle.regular16
                                    : AppTextStyle.black12,
                              ),
                            ],
                          ),
                        );
                      })
                ],
              ),
            ),
            context.isWebSiteScreen
                ? Container(
                    color: AppColors.appColors,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Register Your Sports Events, Selections & Turfs With Us',
                            style: AppTextStyle.semiBold22
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                        MouseRegion(
                          onEnter: (_) => setState(() {
                            model.isEventHover = true;
                            setState(() {});
                          }),
                          onExit: (_) => setState(() {
                            model.isEventHover = false;
                            setState(() {});
                          }),
                          child: Container(
                            width: 180,
                            height: 45,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.darkBlueColor),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: model.isEventHover == true
                                  ? AppColors.darkBlueColor
                                  : AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Event',
                                style: AppTextStyle.black18.copyWith(
                                    color: model.isEventHover == true
                                        ? AppColors.whiteColor
                                        : AppColors.blackColor),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          onEnter: (_) => setState(() {
                            model.isTurfHover = true;
                            setState(() {});
                          }),
                          onExit: (_) => setState(() {
                            model.isTurfHover = false;
                            setState(() {});
                          }),
                          child: Container(
                            width: 180,
                            height: 45,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.darkBlueColor),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: model.isTurfHover == true
                                  ? AppColors.darkBlueColor
                                  : AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'TURF',
                                style: AppTextStyle.black18.copyWith(
                                    color: model.isTurfHover == true
                                        ? AppColors.whiteColor
                                        : AppColors.blackColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    color: AppColors.appColors,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Register Your Sports Events, Selections & Turfs With Us',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.semiBold22
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        MouseRegion(
                          onEnter: (_) => setState(() {
                            model.isEventHover = true;
                            setState(() {});
                          }),
                          onExit: (_) => setState(() {
                            model.isEventHover = false;
                            setState(() {});
                          }),
                          child: Container(
                            height: 45,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.darkBlueColor),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: model.isEventHover == true
                                  ? AppColors.darkBlueColor
                                  : AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Event',
                                style: AppTextStyle.black18.copyWith(
                                    color: model.isEventHover == true
                                        ? AppColors.whiteColor
                                        : AppColors.blackColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MouseRegion(
                          onEnter: (_) => setState(() {
                            model.isTurfHover = true;
                            setState(() {});
                          }),
                          onExit: (_) => setState(() {
                            model.isTurfHover = false;
                            setState(() {});
                          }),
                          child: Container(
                            height: 45,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.darkBlueColor),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: model.isTurfHover == true
                                  ? AppColors.darkBlueColor
                                  : AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'TURF',
                                style: AppTextStyle.black18.copyWith(
                                    color: model.isTurfHover == true
                                        ? AppColors.whiteColor
                                        : AppColors.blackColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            Footer(),
          ],
        ),
      ),
    );
  }

  Widget customCarouselSliderWidget(List<Map<dynamic, dynamic>> listData) {
    return CarouselSlider(
      options: CarouselOptions(
          autoPlay: true,
          height: context.isWebSiteScreen ? 300.0 : 200,
          scrollPhysics: NeverScrollableScrollPhysics(),
          disableCenter: true,
          aspectRatio: 0.4,
          viewportFraction: context.isWebSiteScreen ? 0.4 : 1),
      items: listData.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return customListDataWidget(
              date: i['Date'],
              image: i['image'],
              location: i['location'],
              price: i['ticket'],
              title: i['title'],
            );
          },
        );
      }).toList(),
    );
  }

  Widget customListDataWidget({
    required String image,
    required String title,
    required String location,
    required String date,
    required String price,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              height: 300,
              width: 700,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
              color: AppColors.blackColor.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location,
                  style: AppTextStyle.semiBold12
                      .copyWith(color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  title,
                  style: AppTextStyle.semiBold16
                      .copyWith(color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: AppTextStyle.semiBold12
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    Text(
                      price,
                      style: AppTextStyle.semiBold12
                          .copyWith(color: AppColors.whiteColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
