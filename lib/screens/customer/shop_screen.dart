import 'package:flutter/material.dart';
import 'package:beauty_call/models/shop.dart';
import 'package:beauty_call/utils/app_theme.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShopScreen extends StatefulWidget {
  static const String routeName = '/shop';

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<Shop> _shops = Shop.shopData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Search Field Later'),
      ),
      body: _buildTripItem(),
    );
  }

  Widget _buildTripItem() {
    return ListView.builder(
      itemCount: _shops.length,
      itemBuilder: (context, i) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
          child: InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.asset(
                      '${_shops[i].imageURL}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('${_shops[i].title}', style: AppTheme.title),
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
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text('19 Reviews'),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('${_shops[i].address}'),
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
                    child: Text('Show all Services'),
                  ),
                  SizedBox(height: 6.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
