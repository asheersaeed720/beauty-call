import 'package:beauty_call/models/appointment_model.dart';
import 'package:beauty_call/utils/app_theme.dart';

import 'package:beauty_call/utils/vender_theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentRepo {
  List<AppointmentModel> getAppointmentList() {
    List<AppointmentModel> appointmentList = [
      AppointmentModel(
          'assets/doctor/images/doctor1.jpg',
          'Shagufta',
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Today-10 June, 2020',
          '10:00 AM-11:00 AM',
          '5'),
      AppointmentModel(
          'assets/doctor/images/doctor2.jpg',
          'Afsheen',
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Tomorrow-11 June, 2020',
          '08:00 AM-09:00 AM',
          '8'),
      AppointmentModel(
          'assets/doctor/images/doctor3.jpg',
          'Zaalima',
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Tomorrow-11 June, 2020',
          '08:00 AM-09:00 AM',
          '13'),
      AppointmentModel(
          'assets/doctor/images/doctor1.jpg',
          'Chagani',
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Today-10 June, 2020',
          '10:00 AM-11:00 AM',
          '5'),
      AppointmentModel(
          'assets/doctor/images/doctor2.jpg',
          'Zareena',
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Tomorrow-11 June, 2020',
          '08:00 AM-09:00 AM',
          '8'),
      AppointmentModel(
          'assets/doctor/images/doctor3.jpg',
          'Youtube',
          'Heart Surgeon, National heart care &\nNew Era Hospital',
          'Tomorrow-11 June, 2020',
          '08:00 AM-09:00 AM',
          '13'),
    ];
    return appointmentList;
  }
}

class MyAppointments extends StatefulWidget {
  static const String routeName = '/client-info';

  @override
  _MyAppointmentsState createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
  bool isIncoming = true;

  AppointmentRepo _appointmentRepo = AppointmentRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.COLOR_HOME_BACKGROUND,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Stack(children: [
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  child: Text('My Appointments',
                      style: khulaBold.copyWith(
                        color: AppTheme.COLOR_GREY,
                        fontSize: 16.0,
                      )),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                UpperButton(
                  title: 'incoming',
                  isPressed: isIncoming,
                  onTap: () {
                    setState(() {
                      isIncoming = true;
                    });
                  },
                ),
                SizedBox(width: 40),
                UpperButton(
                  title: 'Past',
                  isPressed: !isIncoming,
                  onTap: () {
                    setState(() {
                      isIncoming = false;
                    });
                  },
                ),
              ]),
            ),
            Expanded(
                child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.all(10.0),
              itemCount: _appointmentRepo.getAppointmentList().length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: AppointmentWidget(
                      _appointmentRepo.getAppointmentList()[index]),
                );
              },
            )),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class UpperButton extends StatelessWidget {
  final String title;
  final bool isPressed;
  final Function onTap;

  UpperButton({@required this.title, @required this.isPressed, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(7),
          color: isPressed ? AppTheme.COLOR_PRIMARY : AppTheme.COLOR_WHITE,
        ),
        child: Center(
            child: Text(title,
                style: isPressed
                    ? khulaSemiBold.copyWith(color: AppTheme.COLOR_WHITE)
                    : khulaSemiBold.copyWith(color: AppTheme.COLOR_PRIMARY))),
      ),
    ));
  }
}

class AppointmentWidget extends StatelessWidget {
  final AppointmentModel appointmentModel;

  AppointmentWidget(this.appointmentModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.COLOR_WHITE, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 15.0,
      ),
      child: Column(children: [
        Row(
          children: [
            Image.asset(appointmentModel.imageUrl,
                height: 51, width: 51, fit: BoxFit.scaleDown),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appointmentModel.name,
                  style: khulaSemiBold.copyWith(
                      color: AppTheme.COLOR_PRIMARY, fontSize: 20.0),
                ),
                Text(
                  appointmentModel.doctorDesignation,
                  style: khulaRegular.copyWith(
                    color: AppTheme.COLOR_GREY,
                    height: 1,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.access_time, color: AppTheme.COLOR_GREY2, size: 17),
                const SizedBox(width: 15.0),
                Text(
                  'Visit time',
                  style: khulaSemiBold.copyWith(
                      color: AppTheme.COLOR_GREY2, fontSize: 13),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.attach_money, color: AppTheme.COLOR_GREY2, size: 17),
                const SizedBox(width: 10.0),
                Text(
                  'Fees information',
                  style: khulaSemiBold.copyWith(
                      color: AppTheme.COLOR_GREY2, fontSize: 13),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              appointmentModel.date,
              style: khulaRegular.copyWith(
                  color: AppTheme.COLOR_GREY, fontSize: 12.0),
            ),
            Text(
              '\$ ${appointmentModel.price}',
              style: khulaSemiBold.copyWith(
                  color: AppTheme.COLOR_GREY, fontSize: 12.0),
            ),
          ],
        ),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              appointmentModel.time,
              style: khulaBold.copyWith(
                  color: AppTheme.COLOR_PRIMARY, fontSize: 13),
            ),
            Text(
              'Fee',
              style: khulaSemiBold.copyWith(
                  color: AppTheme.COLOR_PRIMARY, fontSize: 12.0),
            ),
          ],
        ),
      ]),
    );
  }
}
