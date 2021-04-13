import 'package:beauty_call/models/doctor_data.dart';
import 'package:beauty_call/models/specialist_data.dart';
import 'package:beauty_call/screens/vender/my_appointments.dart';
import 'package:beauty_call/utils/app_theme.dart';

import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:beauty_call/widgets/home_specialist_cardwidget.dart';
import 'package:beauty_call/widgets/home_specialist_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class VenderDashboardScreen extends StatefulWidget {
  static const String routeName = '/dashboard';

  @override
  _VenderDashboardScreenState createState() => _VenderDashboardScreenState();
}

class _VenderDashboardScreenState extends State<VenderDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.COLOR_HOME_BACKGROUND,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _homeToolbar(context),
              SizedBox(height: 20),
              GestureDetector(onTap: () {}, child: _searchDoctors(context)),
              SizedBox(height: 20),
              Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Specialist',
                    style: khulaSemiBold.copyWith(
                      color: AppTheme.COLOR_GREY,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.start,
                  )),
              _specialistList(context),
              SizedBox(
                height: 20,
              ),
              // _specialistBannerList(context),
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Top Doctors',
                          style: khulaSemiBold.copyWith(
                            color: AppTheme.COLOR_GREY,
                            fontSize: 16.0,
                          )),
                      GestureDetector(
                        onTap: () {},
                        child: Text('View All',
                            style: khulaSemiBold.copyWith(
                              color: AppTheme.COLOR_GREY,
                              fontSize: 12.0,
                            )),
                      ),
                    ],
                  )),
              _showAllDoctor(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _homeToolbar(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Row(
        children: [
          Container(
            width: 37,
            height: 35,
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: AppTheme.COLOR_GAINSBORO,
              child: Icon(
                Icons.person,
                color: AppTheme.COLOR_WHITE,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: khulaRegular.copyWith(
                      color: AppTheme.COLOR_GREY, fontSize: 20),
                ),
                Text(
                  'Find best doctors easily',
                  style: khulaRegular.copyWith(
                    color: AppTheme.COLOR_GREY,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                width: 38,
                height: 35,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppTheme.COLOR_WHITE,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/doctor/Icon/calendar3.png',
                  color: AppTheme.COLOR_PRIMARY,
                  fit: BoxFit.scaleDown,
                )),
          ),
        ],
      ),
    );
  }

  Widget _searchDoctors(BuildContext context) {
    return Container(
      height: 43,
      width: double.infinity,
      margin: EdgeInsets.only(right: 20, left: 20),
      padding: EdgeInsets.only(left: 20, right: 5),
      decoration: BoxDecoration(
        color: AppTheme.COLOR_WHITE,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12,
            child: Text(
              'Search Doctors',
              style: khulaSemiBold.copyWith(
                color: AppTheme.COLOR_GAINSBORO,
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Image.asset(
              'assets/doctor/Icon/Search.png',
              color: AppTheme.COLOR_PRIMARY,
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }

  Widget _specialistList(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(color: AppTheme.COLOR_HOME_BACKGROUND),
      child: ListView.builder(
          itemCount: SpecialistData.speciaList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: HomeSpecialistWidget(SpecialistData.speciaList[index]),
            );
          }),
    );
  }

  Widget _specialistBannerList(BuildContext context) {
    return Container(
      height: 110,
      margin: EdgeInsets.only(left: 16),
      child: ListView.builder(
          itemCount: SpecialistData.getBannerList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child:
                  HomeSpecialistCardWidget(SpecialistData.getBannerList[index]),
            );
          }),
    );
  }

  Widget _showAllDoctor(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 35),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: DoctorData.allDoctorList.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(MyAppointments.routeName);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              color: AppTheme.COLOR_WHITE,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      DoctorData.allDoctorList[index].imageUrl,
                      height: double.maxFinite,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    DoctorData.allDoctorList[index].name,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: khulaSemiBold.copyWith(
                      fontSize: 14.0,
                      color: AppTheme.COLOR_MAYA_BLUE,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    DoctorData.allDoctorList[index].designation,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: khulaRegular.copyWith(
                      fontSize: 10.0,
                      color: AppTheme.COLOR_GREY,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        staggeredTileBuilder: (int index) => new StaggeredTile.count(1, 1.3),
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 1.0,
      ),
    );
  }
}
