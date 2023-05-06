import 'package:flutter/material.dart';
import 'package:tailormade/Util/globalsize.dart';
import 'package:tailormade/Util/temp_var.dart';

class CustomizeSuit extends StatefulWidget {
  const CustomizeSuit({super.key});

  @override
  State<CustomizeSuit> createState() => _CustomizeSuitState();
}

class _CustomizeSuitState extends State<CustomizeSuit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Suit Customization",
          style: TextStyle(
            fontSize: size.height * .035,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height * .9,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * .25,
                  width: size.width,
                  child: Image.asset(
                    "lib/assets/banners/banner3.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: SizedBox(
                      width: size.width,
                      height: size.height * .35,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: size.height * .0,
                            width: size.width * .33,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: .5,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 9,
                                  child: Image.asset(
                                    suittypes[index]['img'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          suittypes[index]['txt'],
                                          style: TextStyle(
                                            fontSize: size.height * .022,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )),
                Expanded(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: Image.asset(
                          'lib/assets/banners/customsuitbanner.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Center(
                        child: Container(
                          color: Colors.grey.withOpacity(.8),
                          height: size.height * .033,
                          width: size.width * .7,
                          child: Center(
                            child: Text(
                              "Make a Custom Order",
                              style: TextStyle(
                                fontSize: size.height * .02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
