import 'package:beauty_call/screens/customer/shop_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beauty_call/models/shop.dart';
import 'package:beauty_call/utils/app_theme.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShopScreen extends StatefulWidget {
  static const String routeName = '/shop';

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<Shop> _shops = Shop.shopData;
  ScrollController _scrollController;

  String message = "scrolled up";

  _scrollListener() {
    // if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
    //     !_scrollController.position.outOfRange) {
    //   setState(() {
    //     message = "reach the bottom";
    //   });
    //   print('message: $message');
    // }
    // if (_scrollController.offset <= _scrollController.position.minScrollExtent &&
    //     !_scrollController.position.outOfRange) {
    //   setState(() {
    //     message = "reach the top";
    //   });
    //   print('message: $message');
    // }

    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      setState(() {
        message = "scrolled down";
      });
      print('message: $message');
      print('');
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      setState(() {
        message = "scrolled up";
      });
      print('message: $message');
    } else if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        message = "reach the top";
      });
      print('message: $message');
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
          return <Widget>[
            if (message == 'scrolled up') _buildSilverAppBar1(),
            if (message == 'scrolled down') _buildSilverAppBar2(),
          ];
          // return <Widget>[_buildSilverAppBar1(), _buildSilverAppBar2()];
        },
        body: _buildTripItem(),
      ),
    );
  }

  Widget _buildTripItem() {
    return ListView.builder(
      // padding: EdgeInsets.zero,
      itemCount: _shops.length,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.only(top: 0),
          margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(ShopDetailScreen.routeName);
              },
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
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
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
                    child: Text(
                      'Show all Services',
                      style: TextStyle(color: AppTheme.COLOR_DARK_ORANGE),
                    ),
                  ),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  SliverAppBar _buildSilverAppBar1() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 180.0,
      floating: false,
      elevation: 0,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Padding(
            padding: const EdgeInsets.only(left: 38.0, right: 12.0),
            child: Column(
              children: [
                const SizedBox(height: 32.0),
                Container(
                  color: AppTheme.COLOR_TEXT_FIELD,
                  child: TextFormField(
                    style: TextStyle(color: AppTheme.COLOR_TEXT_FIELD),
                    textCapitalization: TextCapitalization.none,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for a treatment',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppTheme.COLOR_GREY,
                        size: 26.0,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 14.0),
                Container(
                  color: AppTheme.COLOR_TEXT_FIELD,
                  child: TextFormField(
                    style: TextStyle(color: AppTheme.COLOR_TEXT_FIELD),
                    textCapitalization: TextCapitalization.none,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Location',
                      prefixIcon: const Icon(
                        Icons.location_on,
                        color: AppTheme.COLOR_GREY,
                        size: 26.0,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 14.0),
                Container(
                  color: AppTheme.COLOR_TEXT_FIELD,
                  child: TextFormField(
                    style: TextStyle(color: AppTheme.COLOR_TEXT_FIELD),
                    textCapitalization: TextCapitalization.none,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Any time',
                      prefixIcon: const Icon(
                        Icons.calendar_today,
                        color: AppTheme.COLOR_GREY,
                        size: 26.0,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  SliverAppBar _buildSilverAppBar2() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      title: Container(
        color: AppTheme.COLOR_TEXT_FIELD,
        child: TextFormField(
          textCapitalization: TextCapitalization.none,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search Service',
            prefixIcon: const Icon(
              Icons.search,
              color: AppTheme.COLOR_GREY,
              size: 26.0,
            ),
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }

  //   SliverAppBar createSilverAppBar1() {
  //   return SliverAppBar(
  //     backgroundColor: Colors.redAccent,
  //     expandedHeight: 300,
  //     floating: false,
  //     elevation: 0,
  //     flexibleSpace: LayoutBuilder(
  //         builder: (BuildContext context, BoxConstraints constraints) {
  //       return FlexibleSpaceBar(
  //         collapseMode: CollapseMode.parallax,
  //         background: Container(
  //           color: Colors.white,
  //           child: Image.asset(
  //             'assets/mainBackImage.jpg',
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //       );
  //     }),
  //   );
  // }

}
