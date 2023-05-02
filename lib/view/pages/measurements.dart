import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:tailormade/Util/globalsize.dart';
import 'package:tailormade/Util/temp_var.dart';

class Measurements extends StatefulWidget {
  const Measurements({super.key});

  @override
  State<Measurements> createState() => _MeasurementsState();
}

class _MeasurementsState extends State<Measurements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Measurements"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "this does not make changes to placed orders",
              style: TextStyle(),
            ),
            SizedBox(
              height: size.height * .75,
              child: ListView.builder(
                itemCount: 50,
                // shrinkWrap: true,
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
                            height: size.height * .07,
                            width: size.width * .1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              // child: Image.asset(
                              //   suits[index]['img'].toString(),
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jeremy Catholder",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Last updated 12 days ago",
                                style: TextStyle(
                                  fontSize: 13,
                                  // fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: size.height * .07,
                width: size.width * .8,
                child: FilledButton.tonal(
                  onPressed: () {
                    Get.toNamed("/MeasurementInput");
                  },
                  child: Text(
                    "Add new Measurement",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * .02,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
