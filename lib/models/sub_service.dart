class SubService {
  String title;

  SubService({this.title});

  static List<SubService> serviceData = <SubService>[
    SubService(
      title: 'Ladies\'s  Haircut',
    ),
    SubService(
      title: 'Men\'s Haircut',
    ),
    SubService(
      title: 'Children\'s Haircut',
    ),
  ];
}
