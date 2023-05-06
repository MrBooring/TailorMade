import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailormade/Util/globalsize.dart';
import 'package:tailormade/Util/temp_var.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Get.toNamed("/cart");
        },
        child: Icon(Icons.shopping_cart),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF304F8C),
              ),
              child: Text(
                'Talor Made',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () {
                // TODO: Add onTap functionality
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Orders'),
              onTap: () {
                // TODO: Add onTap functionality
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // TODO: Add onTap functionality
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy Policy'),
              onTap: () {
                // TODO: Add onTap functionality
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Builder(builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.short_text_rounded,
                  size: 23,
                ),
              ),
            );
          }),
        ),
        actions: [
          Container(
            height: size.height * .047,
            width: size.width * .095,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
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
            child: Image.asset(
              "lib/assets/banners/u1.png",
              fit: BoxFit.cover,
            ),
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
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "lib/assets/banners/banner1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .4,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                        itemCount: dashitems.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: dashlogo[index]['call'],
                            child: Center(
                              child: Stack(
                                children: [
                                  Positioned(
                                      child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height * .012,
                                      ),
                                      SizedBox(
                                        height: size.height * .13,
                                        width: size.width * .25,
                                        child: Container(
                                          padding: EdgeInsets.all(3),
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: size.height * .05,
                                              ),
                                              Text(
                                                dashitems[index],
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
                                  )),
                                  Positioned(
                                    left: size.width * .065,
                                    child: Container(
                                      height: size.height * .06,
                                      width: size.width * .12,
                                      child: Padding(
                                        padding: const EdgeInsets.all(9),
                                        child: Image.asset(
                                          dashlogo[index]['png'].toString(),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: dashlogo[index]['color'] as Color,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                        itemCount: fabric.length,
                        // shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed("/ProductDetails");
                              },
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  width: size.width * .4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: size.height * .1,
                                        width: size.width * .35,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            fabric[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Fabric 78$index",
                                        style: TextStyle(
                                          fontSize: size.height * .02,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
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
                        itemCount: suits.length,
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
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        suits[index]['img'].toString(),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: size.width * .34,
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
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Row(
                                          children: [
                                            Text(
                                              suits[index]['text'].toString(),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: size.height * .02,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
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
