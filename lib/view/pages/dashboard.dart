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
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: SizedBox(
                child: Column(
                  children: [
                    Container(
                      height: size.height * .2,
                      decoration: BoxDecoration(color: Color(0x9f032174), borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: size.height * .4,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Positioned(
                                  child: MediaQuery(
                                data: MediaQuery.of(context),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: size.height * .015,
                                    ),
                                    SizedBox(
                                      height: size.height * .14,
                                      width: size.width * .29,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: size.height * .05,
                                            ),
                                            Text(
                                              "Get Measurements",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: size.height * .02,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              Positioned(
                                left: size.width * .095,
                                child: Container(
                                  height: size.height * .05,
                                  width: size.width * .1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Placeholder(),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xff032174).withAlpha(180),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Our Fabric Collection",
                          style: TextStyle(
                            fontSize: size.height * .025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "view all",
                          style: TextStyle(
                            fontSize: size.height * .02,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * .2,
                      child: ListView.builder(
                        itemCount: 3,
                        // shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                                padding: EdgeInsets.all(10),
                                width: size.width * .4,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: size.height * .1,
                                      child: Placeholder(),
                                    )
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Our Tailor's Choice",
                          style: TextStyle(
                            fontSize: size.height * .025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "view all",
                          style: TextStyle(
                            fontSize: size.height * .02,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * .16,
                      child: ListView.builder(
                        itemCount: 3,
                        // shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: size.width * .6,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: size.height * .1,
                                    width: size.width * .2,
                                    child: Placeholder(),
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: size.width * .3,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Spacer(),
                                            SizedBox(
                                              height: size.height * .035,
                                              width: size.width * .09,
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.favorite,
                                                    size: size.height * .02,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Ivory 3 Piece Suit",
                                        style: TextStyle(
                                          fontSize: size.height * .02,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: size.height * .015,
                                          ),
                                          Text(
                                            "4.7",
                                            style: TextStyle(
                                              fontSize: size.height * .015,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
