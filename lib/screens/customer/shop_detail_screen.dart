import 'package:beauty_call/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShopDetailScreen extends StatefulWidget {
  static const String routeName = '/shop-detail';

  @override
  _ShopDetailScreenState createState() => _ShopDetailScreenState();
}

class _ShopDetailScreenState extends State<ShopDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            flexibleSpace: Image.asset(
              './assets/images/barber_img1.jpg',
              fit: BoxFit.cover,
            ),
            expandedHeight: 275,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.only(top: 0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 6.0, horizontal: 8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text('title', style: AppTheme.title),
                        ),
                        SizedBox(height: 12.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20.0,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Text('(19 Reviews)'),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text('address'),
                        ),
                        SizedBox(height: 8.0),
                        Divider(),
                        SizedBox(height: 8.0),
                        ListTile(
                          title: Text('Ladies - Wash, Haircut & Blow Dry'),
                          trailing: Text('From 10'),
                        ),
                        ListTile(
                          title: Text('Men - Wash, Haircut & Blow Dry'),
                          trailing: Text('From 10'),
                        ),
                        ListTile(
                          title: Text('Ladies - Wash, Haircut & Blow Dry'),
                          trailing: Text('From 50'),
                        ),
                        SizedBox(height: 12.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Show all Services',
                            style: TextStyle(color: AppTheme.COLOR_DARK_ORANGE),
                          ),
                        ),
                        SizedBox(height: 400.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
