import 'package:beauty_call/models/service.dart';
import 'package:beauty_call/screens/customer/shop_screen.dart';
import 'package:beauty_call/utils/app_theme.dart';
import 'package:beauty_call/widgets/custom_expansion_tile.dart';
import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';

class CustomerDashboardScreen extends StatefulWidget {
  static const String routeName = '/customer-dashboard';

  @override
  _CustomerDashboardScreenState createState() =>
      _CustomerDashboardScreenState();
}

class _CustomerDashboardScreenState extends State<CustomerDashboardScreen> {
  List<Service> _services = Service.serviceData;

  // Map<String, bool> expansionState = Map();

  // @override
  // void initState() {
  //   _services.forEach((service) {
  //     expansionState.putIfAbsent(service.title, () => true);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Beauty Call',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 14.0),
                        Container(
                          child: TextField(
                            textCapitalization: TextCapitalization.none,
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(6.0),
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
                        const SizedBox(height: 14.0),
                        Divider(thickness: 2.0),
                        _buildTripItem(),
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

  Widget _buildTripItem() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _services.length,
              itemBuilder: (context, i) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 9.0),
                  child: Card(
                    elevation: 3.0,
                    color: _services[i].color,
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: AppTheme.COLOR_WHITE),
                      child: ExpansionTile(
                        trailing: Column(
                          children: [
                            Image.asset(
                              '${_services[i].imageURL}',
                              width: 25.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              '${_services[i].title}',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.COLOR_WHITE,
                              ),
                            ),
                          ],
                        ),
                        leading: Image.asset('${_services[i].imageURL}'),
                        title: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Text(''),
                        ),
                        children: <Widget>[
                          ListTile(
                            tileColor: AppTheme.COLOR_WHITE,
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ShopScreen.routeName);
                            },
                            title: Text(
                              'Men\'s Haircut',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                // color: AppTheme.COLOR_WHITE,
                              ),
                            ),
                          ),
                          ListTile(
                            tileColor: AppTheme.COLOR_WHITE,
                            onTap: () {},
                            title: Text(
                              'Ladies\'s Haircut',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                // color: AppTheme.COLOR_WHITE,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 60.0)
        ],
      ),
    );
  }

  // Widget _buildTripItem() {
  //   return Container(
  //     height: MediaQuery.of(context).size.height * 0.8,
  //     child: Column(
  //       children: [
  //         Expanded(
  //           child: ListView.builder(
  //             key: Key('builder ${selected.toString()}'),
  //             itemCount: _services.length,
  //             itemBuilder: (context, i) {
  //               return Container(
  //                 margin: const EdgeInsets.symmetric(vertical: 9.0),
  //                 child: Card(
  //                   elevation: 3.0,
  //                   color: _services[i].color,
  //                   child: Theme(
  //                     data: Theme.of(context)
  //                         .copyWith(dividerColor: AppTheme.COLOR_WHITE),
  //                     child: ExpansionTile(
  //                       key: Key(i.toString()),
  //                       initiallyExpanded: i == selected,
  //                       trailing: Text(
  //                         '${_services[i].title}',
  //                         style: TextStyle(
  //                           fontSize: 20.0,
  //                           fontWeight: FontWeight.w600,
  //                           color: AppTheme.COLOR_WHITE,
  //                         ),
  //                       ),
  //                       leading: Image.asset('${_services[i].imageURL}'),
  //                       title: Container(
  //                         height: MediaQuery.of(context).size.height * 0.3,
  //                         child: Text(''),
  //                       ),
  //                       children: <Widget>[
  //                         ListTile(
  //                           tileColor: AppTheme.COLOR_WHITE,
  //                           onTap: () {},
  //                           title: Text(
  //                             'Men\'s Haircut',
  //                             style: TextStyle(
  //                               fontWeight: FontWeight.w700,
  //                               // color: AppTheme.COLOR_WHITE,
  //                             ),
  //                           ),
  //                         ),
  //                         ListTile(
  //                           tileColor: AppTheme.COLOR_WHITE,
  //                           onTap: () {},
  //                           title: Text(
  //                             'Ladies\'s Haircut',
  //                             style: TextStyle(
  //                               fontWeight: FontWeight.w700,
  //                               // color: AppTheme.COLOR_WHITE,
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                       onExpansionChanged: ((newState) {
  //                         if (newState)
  //                           setState(() {
  //                             selected = i;
  //                           });
  //                         else
  //                           setState(() {
  //                             selected = -1;
  //                           });
  //                       }),
  //                     ),
  //                   ),
  //                 ),
  //               );
  //             },
  //           ),
  //         ),
  //         const SizedBox(height: 60.0)
  //       ],
  //     ),
  //   );
  // }
}
