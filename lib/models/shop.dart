class Shop {
  String title;
  String imageURL;
  String reviews;
  String address;

  Shop({this.title, this.imageURL, this.reviews, this.address});

  static List<Shop> shopData = <Shop>[
    Shop(
      title: 'Khan Barber',
      imageURL: 'assets/images/barber_img1.jpg',
      reviews: '4.9',
      address: 'Karachi, Pakistan',
    ),
    Shop(
      title: 'Shaqeel Barber',
      imageURL: 'assets/images/barber_img2.jpg',
      reviews: '4.9',
      address: 'Isl, Pakistan',
    ),
    Shop(
      title: 'Khan Barber',
      imageURL: 'assets/images/barber_img3.jpg',
      reviews: '3.6',
      address: 'Lahore, Pakistan',
    ),
  ];
}
