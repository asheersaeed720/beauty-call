import 'package:flutter/material.dart';

class CustomerDashboardScreen extends StatefulWidget {
  static const String routeName = '/customer-dashboard';

  @override
  _CustomerDashboardScreenState createState() =>
      _CustomerDashboardScreenState();
}

class _CustomerDashboardScreenState extends State<CustomerDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: Text(_pages[_selectedPageIndex]['title']),
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // leading: IconButton(icon: Icon(Icons.home), onPressed: null),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        elevation: 0,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              // flexibleSpace: Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 8),
              //   child: SizedBox(
              //     height: MediaQuery.of(context).size.width * 0.6,
              //     child: Carousel(
              //             images: sliderImages.map((img) {
              //               return ClipRRect(
              //                 borderRadius: BorderRadius.circular(8),
              //                 child: CachedNetworkImage(
              //                   imageUrl: '$IMG_BASE_URL/${img.image}',
              //                   fit: BoxFit.cover,
              //                 ),
              //               );
              //             }).toList(),
              //             dotSize: 4.0,
              //             animationCurve: Curves.ease,
              //             dotSpacing: 15.0,
              //             dotColor: Theme.of(context).accentColor,
              //             indicatorBgPadding: 5.0,
              //             dotBgColor: Theme.of(context).primaryColor,
              //             borderRadius: true,
              //           ),
              //   ),
              // ),
              // expandedHeight: 275,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.only(top: 2, left: 8),
                    child: Column(
                      children: [
                        Text(
                          'Our Deals',
                          style: Theme.of(context).textTheme.headline,
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            // height: 52.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            margin: const EdgeInsets.only(top: 90.0),
                            child: TextField(
                              textCapitalization: TextCapitalization.none,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(60.0),
                                  ),
                                ),
                                hintText: 'Search Service',
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.green,
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
