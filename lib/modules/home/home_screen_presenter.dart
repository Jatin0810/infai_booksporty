import 'package:infai_demo_web/constants/app_const_assets.dart';
import 'package:infai_demo_web/modules/home/home_screen_model.dart';
import 'package:infai_demo_web/modules/home/home_screen_view.dart';

class HomeScreenPresenter {
  set updateView(HomeScreenView homeScreenView) {}
}

class BasicHomeScreenPresenter implements HomeScreenPresenter {
  late HomeScreenView view;
  late HomeScreenModel model;
  BasicHomeScreenPresenter() {
    model = HomeScreenModel(
        bannerImageList: bannerImageList,
        selectedEventIndex: 0,
        alliesList: alliesList,
        whyUsList: whyUsList,
        supportCategoriesList: supportCategoriesList,
        selectedUpcomingEventIndex: 0,
        eventImageList: eventImageList,
        trufImageList: trufImageList,
        trialImageList: trialImageList);
    view = HomeScreenView();
  }

  List<String> bannerImageList = <String>[
    AppAssets.h1,
    AppAssets.h2,
    AppAssets.h3,
  ];
  List<Map> eventImageList = <Map>[
    {
      "image": AppAssets.e1,
      'location': "Thane",
      'title': "Thane Football Cup",
      'Date': "25-Jan-2025",
      'ticket': "₹ 2500 Onwards"
    },
    {
      "image": AppAssets.e2,
      'location': "Navi Mumbai",
      'title': "Navi Mumbai Cricket Tournament",
      'Date': "26-Jan-2025",
      'ticket': "₹ 5000 Onwards"
    },
    {
      "image": AppAssets.e3,
      'location': "Mumbai",
      'title': "IPL 2025",
      'Date': "10-March-2025",
      'ticket': "₹ 2000 Onwards"
    },
  ];
  List<Map> trialImageList = <Map>[
    {
      "image": AppAssets.t1,
      'location': "Thane",
      'title': "Thane Football Cup",
      'Date': "25-Jan-2025",
      'ticket': "₹ 2500 Onwards"
    },
    {
      "image": AppAssets.t2,
      'location': "Navi Mumbai",
      'title': "Navi Mumbai Cricket Tournament",
      'Date': "26-Jan-2025",
      'ticket': "₹ 5000 Onwards"
    },
  ];
  List<Map> trufImageList = <Map>[
    {
      "image": AppAssets.tur1,
      'location': "Thane",
      'title': "Thane Turf Cup",
      'Date': "25-Jan-2025",
      'ticket': "₹ 2500 Onwards"
    },
    {
      "image": AppAssets.tur2,
      'location': "Navi Mumbai",
      'title': "Navi Mumbai Turf Tournament",
      'Date': "26-Jan-2025",
      'ticket': "₹ 5000 Onwards"
    },
    {
      "image": AppAssets.tur3,
      'location': "Navi Mumbai",
      'title': "Navi Mumbai Turf Tournament",
      'Date': "26-Jan-2025",
      'ticket': "₹ 5000 Onwards"
    },
  ];

  List<Map> supportCategoriesList = <Map>[
    {'image': AppAssets.s1, 'title': 'Cricket', 'isSvg': false},
    {'image': AppAssets.s2, 'title': 'Football', 'isSvg': true},
    {'image': AppAssets.s3, 'title': 'Hockey', 'isSvg': true},
    {'image': AppAssets.s4, 'title': 'Table Tennis', 'isSvg': true},
    {'image': AppAssets.s5, 'title': 'Lawn tennis', 'isSvg': true},
    {'image': AppAssets.s6, 'title': 'Badminton', 'isSvg': true},
    {'image': AppAssets.s7, 'title': 'E-Sports', 'isSvg': false},
    {'image': AppAssets.s8, 'title': 'Kick Boxing', 'isSvg': false},
    {'image': AppAssets.s9, 'title': 'Skating Ring', 'isSvg': false},
    {'image': AppAssets.s10, 'title': 'Roll Ball', 'isSvg': false},
    {'image': AppAssets.s11, 'title': 'Golf', 'isSvg': true},
    {'image': AppAssets.s12, 'title': 'Basketball', 'isSvg': true},
    {'image': AppAssets.s13, 'title': 'Swimming', 'isSvg': false},
    {'image': AppAssets.s14, 'title': 'Running Track', 'isSvg': true},
    {'image': AppAssets.s15, 'title': 'Paddle Ball', 'isSvg': false},
    {'image': AppAssets.s16, 'title': 'Pickle Balll', 'isSvg': false},
  ];

  List alliesList = [
    AppAssets.ikfLogo,
    AppAssets.mySportCode,
    AppAssets.boland,
    AppAssets.ludimos,
  ];

  List<Map> whyUsList = <Map>[
    {
      "image": AppAssets.ticketing,
      'header': "Ticketing Experience",
      'sub_header':
          "Seamlessly book tickets for your favorite sports events with just a few clicks"
    },
    {
      "image": AppAssets.turfBooking,
      'header': "Turf Booking",
      'sub_header':
          "Effortlessly book turfs for your games and practice sessions anytime, anywhere!"
    },
    {
      "image": AppAssets.lowcommissionrate,
      'header': "Low Commission Rate",
      'sub_header':
          "Enjoy low commission rates and maximize your earnings with every booking!"
    },
    {
      "image": AppAssets.customizedtrials,
      'header': "Customized Trials",
      'sub_header':
          "Collaborate to list your Selections and Trials through our Customized Solutions!"
    },
    {
      "image": AppAssets.dedicated,
      'header': "Dedicated Partner Support",
      'sub_header':
          "Our Partner Success Team is here to help you optimize your listings, answer queries, and ensure smooth operations!"
    },
    {
      "image": AppAssets.audience,
      'header': "TIncreased Visibility and Audience Reach",
      'sub_header':
          "Get access to a large community of sports enthusiasts actively searching for events and turf bookings!"
    },
  ];

  @override
  set updateView(HomeScreenView homeScreenView) {
    view = homeScreenView;
    view.refreshModel(model);
  }
}
