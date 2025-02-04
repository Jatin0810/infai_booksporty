import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infai_demo_web/constants/app_colors.dart';
import 'package:infai_demo_web/constants/app_const_assets.dart';
import 'package:infai_demo_web/constants/app_text_style.dart';
import 'package:infai_demo_web/modules/home/home_screen_model.dart';
import 'package:infai_demo_web/modules/home/home_screen_presenter.dart';
import 'package:infai_demo_web/modules/home/home_screen_view.dart';

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
      backgroundColor: AppColors.blackColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: 200.0,
                  aspectRatio: 1,
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
                        style: AppTextStyle.black34
                            .copyWith(color: AppColors.backgroundColor),
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
                style: AppTextStyle.black30
                    .copyWith(color: AppColors.backgroundColor),
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
                      height: 60,
                      width: 160,
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
                          style: AppTextStyle.semiBold18
                              .copyWith(color: AppColors.whiteColor),
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
                      height: 60,
                      width: 160,
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
                          style: AppTextStyle.semiBold18
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
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
                style: AppTextStyle.black30
                    .copyWith(color: AppColors.backgroundColor),
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
                      height: 60,
                      width: 160,
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
                          style: AppTextStyle.semiBold18
                              .copyWith(color: AppColors.whiteColor),
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
                      height: 60,
                      width: 160,
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
                          style: AppTextStyle.semiBold18
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
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
                    style: AppTextStyle.black30
                        .copyWith(color: AppColors.backgroundColor),
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
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        color: AppColors.appColors,
                      ),
                      child: Center(
                        child: Text(
                          "Turfs",
                          style: AppTextStyle.semiBold18
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
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
                          childAspectRatio: 1.2, crossAxisCount: 6),
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
            Container()
          ],
        ),
      ),
    );
  }

  Widget customCarouselSliderWidget(List<Map<dynamic, dynamic>> listData) {
    return CarouselSlider(
      options: CarouselOptions(
          autoPlay: true,
          height: 300.0,
          scrollPhysics: NeverScrollableScrollPhysics(),
          disableCenter: true,
          aspectRatio: 0.4,
          viewportFraction: 0.4),
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
