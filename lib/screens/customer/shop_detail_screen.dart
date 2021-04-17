import 'package:beauty_call/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShopDetailScreen extends StatefulWidget {
  static const String routeName = '/shop-detail';

  @override
  _ShopDetailScreenState createState() => _ShopDetailScreenState();
}

class _ShopDetailScreenState extends State<ShopDetailScreen> {
  var top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              iconTheme: IconThemeData(
                color: top == 80 ? AppTheme.COLOR_DARK_ORANGE : Colors.white,
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 14.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white38,
                  ),
                  child: Icon(
                    Icons.share,
                  ),
                ),
              ],
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  top = constraints.biggest.height;
                  return FlexibleSpaceBar(
                    title: AnimatedOpacity(
                      duration: Duration(milliseconds: 400),
                      opacity: top == 80.0 ? 1.0 : 0.0,
                      child: Text(
                        top == 80 ? 'Tuckwell & Co' : '',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                    background: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Carousel(
                        images: [
                          'assets/images/barber_img1.jpg',
                          'assets/images/barber_img2.jpg',
                          'assets/images/barber_img3.jpg',
                        ].map((img) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              '$img',
                              fit: BoxFit.cover,
                            ),
                          );
                        }).toList(),
                        dotSize: 5.0,
                        animationCurve: Curves.ease,
                        dotSpacing: 15.0,
                        dotColor: Colors.white70,
                        indicatorBgPadding: 6.0,
                        dotBgColor: Colors.transparent,
                        borderRadius: true,
                      ),
                    ),
                  );
                },
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tuckwell & Co',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Icon(
                          Icons.favorite_outline_rounded,
                          color: AppTheme.COLOR_DARK_ORANGE,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    color: Color(0xfffdb805),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const SizedBox(width: 6.0),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffdb805),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffdb805),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffdb805),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffdb805),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffdb805),
                                ),
                                const SizedBox(width: 6.0),
                                Text(
                                  '37 reviews',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 18.0,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Row(
                      children: [
                        Text(
                          'View',
                          style: TextStyle(
                            color: Color(0xfffdb805),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12.0),
                    Image.asset('./assets/images/divider.jpg'),
                    const SizedBox(height: 16.0),
                    Text(
                      'Popular services',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
              ),
              _buildPopularServices('Ladies - Wash, Haircut & Blow Dry'),
              _buildPopularServices('Ladies - Very Short/Clippered'),
              const SizedBox(height: 12.0),
              Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  'Full menu',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              const SizedBox(height: 12.0),
              _buildFullMenuWidget(),
              _buildPopularServices('Ladies Waxing - Face'),
              _buildPopularServices('Ladies Waxing Leg'),
              _buildPopularServices('Ladies Waxing - Hollywood'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularServices(title) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        backgroundColor: Color(0xfff8f8f8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title',
              style: TextStyle(
                color: AppTheme.COLOR_TEXT_ICON,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "\$ 25",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: ExpansionTile(
              backgroundColor: Color(0xfff8f8f8),
              title: Text(
                'Facial - Dermaplaning',
                style: TextStyle(
                  // color: AppTheme.COLOR_TEXT_ICON,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                    color: AppTheme.COLOR_TEXT_ICON,
                    size: 17.0,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    'Detail',
                    style: TextStyle(color: AppTheme.COLOR_TEXT_ICON),
                  ),
                  const SizedBox(width: 6.0),
                  Text(
                    'From 45 min',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12.0),
                  )
                ],
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: ListTile(
                    title: Row(
                      children: [
                        Text('Eyebrows'),
                        Spacer(),
                        Text('\$ 6'),
                        const SizedBox(width: 8.0),
                        Icon(
                          Icons.add_circle_outline,
                          color: AppTheme.COLOR_DARK_ORANGE,
                          size: 26.0,
                        ),
                      ],
                    ),
                    subtitle: Text('10 min'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: ListTile(
                    title: Row(
                      children: [
                        Text('Lip & Chin'),
                        Spacer(),
                        Text('\$ 16'),
                        const SizedBox(width: 8.0),
                        Icon(
                          Icons.add_circle_outline,
                          color: AppTheme.COLOR_DARK_ORANGE,
                          size: 26.0,
                        ),
                      ],
                    ),
                    subtitle: Text('20 min'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFullMenuWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
      color: Colors.grey[200],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Card(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              child: Column(
                children: [
                  Icon(
                    Icons.accessibility,
                    color: Colors.grey,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            )),
            Card(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              child: Column(
                children: [
                  Icon(
                    Icons.accessibility,
                    color: Colors.grey,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hair",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            )),
            Card(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              child: Column(
                children: [
                  Icon(
                    Icons.accessibility,
                    color: Colors.grey,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nails",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            )),
            Card(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              child: Column(
                children: [
                  Icon(
                    Icons.accessibility,
                    color: Colors.grey,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hair",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            )),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.accessibility,
                      color: Colors.grey,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Face",
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.accessibility,
                      color: Colors.grey,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Body",
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
