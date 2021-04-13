import 'package:beauty_call/models/specialist.dart';
import 'package:beauty_call/utils/app_theme.dart';

class SpecialistData {
  static List<SpeciaList> speciaList = [
    SpeciaList(
        iconUrl: 'assets/doctor/Icon/barber.png',
        title: 'Friseur',
        backgroundColor: AppTheme.COLOR_PRIMARY),
    SpeciaList(
        iconUrl: 'assets/doctor/Icon/heart.png',
        title: 'Gesicht',
        backgroundColor: AppTheme.COLOR_YELLOW_SEA),
    SpeciaList(
        iconUrl: 'assets/doctor/Icon/dental.png',
        title: 'Massage',
        backgroundColor: AppTheme.COLOR_MOUNTAIN_MEADOW),
    SpeciaList(
        iconUrl: 'assets/doctor/Icon/dental.png',
        title: 'Manicure',
        backgroundColor: AppTheme.COLOR_MEDIUM_SLATE_BLUE),
  ];

  static List<SpeciaList> getBannerList = [
    SpeciaList(
        bannerTitle: 'Cardio issues?',
        bannerDescription:
            'Lorem ispum dolor sit amet, consetetur adipiscing elit, sed do eiusmod tempor ncididunt ut labore et dolore magna aliqua. ',
        price: 99),
    SpeciaList(
        bannerTitle: 'Dental issues?',
        bannerDescription:
            'Lorem ispum dolor sit amet, consetetur adipiscing elit, sed do eiusmod tempor ncididunt ut labore et dolore magna aliqua. ',
        price: 80),
    SpeciaList(
        bannerTitle: 'Heart issues?',
        bannerDescription:
            'Lorem ispum dolor sit amet, consetetur adipiscing elit, sed do eiusmod tempor ncididunt ut labore et dolore magna aliqua. ',
        price: 60),
    SpeciaList(
        bannerTitle: 'Mental issues?',
        bannerDescription:
            'Lorem ispum dolor sit amet, consetetur adipiscing elit, sed do eiusmod tempor ncididunt ut labore et dolore magna aliqua. ',
        price: 100),
  ];
}
