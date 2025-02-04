class HomeScreenModel {
  List<String> bannerImageList;
  List<Map> eventImageList;
  List<Map> trialImageList;
  List<Map> supportCategoriesList;
  List<Map> trufImageList;
  int selectedEventIndex;
  int selectedUpcomingEventIndex;
  HomeScreenModel({
    required this.bannerImageList,
    required this.selectedEventIndex,
    required this.eventImageList,
    required this.trialImageList,
    required this.supportCategoriesList,
    required this.selectedUpcomingEventIndex,
    required this.trufImageList,
  });
}
