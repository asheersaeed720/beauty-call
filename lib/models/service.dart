import 'package:beauty_call/models/sub_service.dart';
import 'package:beauty_call/utils/app_theme.dart';
import 'package:flutter/material.dart';

class Service {
  String title;
  String imageURL;
  Color color;
  SubService subService;

  Service({this.title, this.imageURL, this.subService, this.color});

  static List<Service> serviceData = <Service>[
    Service(
      title: 'Haircut',
      imageURL: 'assets/images/barber.png',
      color: AppTheme.COLOR_YELLOW,
    ),
    Service(
      title: 'Haircut',
      imageURL: 'assets/images/barber.png',
      color: AppTheme.COLOR_SEA_GREEN,
    ),
    Service(
      title: 'Haircut',
      imageURL: 'assets/images/barber.png',
      color: AppTheme.COLOR_DARK_ORANGE,
    ),
    Service(
      title: 'Haircut',
      imageURL: 'assets/images/barber.png',
      color: AppTheme.COLOR_DARK_ORANGE,
    ),
    Service(
      title: 'Haircut',
      imageURL: 'assets/images/barber.png',
      color: AppTheme.COLOR_DARK_ORANGE,
    ),
  ];
}
