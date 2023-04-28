import 'package:flutter/material.dart';
import 'package:tailormade/Util/globalsize.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tailor Made",
          style: ThemeData.light().textTheme.titleLarge,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // boxShadow: [
              //   BoxShadow(
              //     color: ThemeData.light().shadowColor.withOpacity(.2),
              //     offset: const Offset(
              //       1.0,
              //       1.0,
              //     ),
              //     blurRadius: 5.0,
              //     spreadRadius: 1.0,
              //   ), //BoxShadow
              //   BoxShadow(
              //     color: Colors.white,
              //     offset: const Offset(0.0, 0.0),
              //     blurRadius: 0.0,
              //     spreadRadius: 0.0,
              //   ), //BoxShadow
              // ],
            ),
            child: Icon(
              Icons.short_text_rounded,
              size: 23,
            ),
          ),
        ),
        actions: [
          Container(
            height: size.height * .047,
            width: size.width * .095,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // boxShadow: [
              //   BoxShadow(
              //     color: ThemeData.light().shadowColor.withOpacity(.2),
              //     offset: const Offset(
              //       1.0,
              //       1.0,
              //     ),
              //     blurRadius: 5.0,
              //     spreadRadius: 1.0,
              //   ), //BoxShadow
              //   BoxShadow(
              //     color: Colors.white,
              //     offset: const Offset(0.0, 0.0),
              //     blurRadius: 0.0,
              //     spreadRadius: 0.0,
              // ), //BoxShadow
              // ],
            ),
            child: Icon(
              Icons.notifications,
              size: 20,
            ),
          ),
          SizedBox(
            width: size.width * .05,
          ),
          CircleAvatar(
            maxRadius: size.height * .025,
          ),
          SizedBox(
            width: size.width * .02,
          ),
        ],
      ),
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context),
          child: Column(
            children: [Container()],
          ),
        ),
      ),
    );
  }
}
