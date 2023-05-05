import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:tailormade/Util/globalsize.dart';
import 'package:tailormade/controllers/input_measurements.dart';

class MeasurementInput extends StatefulWidget {
  const MeasurementInput({super.key});

  @override
  State<MeasurementInput> createState() => _MeasurementInputState();
}

class _MeasurementInputState extends State<MeasurementInput> {
  @override
  Widget build(BuildContext context) {
    var inputMeasurementsController = Get.put(InputMeasurementsController());
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Input Measurement"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.small(
          onPressed: () {
            Get.bottomSheet(Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  )),
              padding: EdgeInsets.all(15),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Profile Name for this Measurements",
                        style: TextStyle(
                          fontSize: size.height * .025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    SizedBox(
                      height: size.height * .08,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: size.height * .017,
                              horizontal: size.width * .02,
                            ),
                            label: const Text("Name")),
                      ),
                    ),
                    Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: size.height * .02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: size.width,
                        child: SegmentedButton(segments: const [
                          ButtonSegment(
                            value: "Male",
                            label: Text("Male"),
                          ),
                          ButtonSegment(
                            value: "Female",
                            label: Text("Female"),
                          ),
                        ], selected: <String>{
                          "Male"
                        }),
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      child: FilledButton(
                        onPressed: () {
                          Get.snackbar("Successfull", "Your meanurements are saved and can be revied, you can place order for {Name}", snackPosition: SnackPosition.BOTTOM);
                          Get.close(2);
                        },
                        child: Text("Submit"),
                      ),
                    ),
                  ],
                ),
              ),
            ));
          },
          child: const Icon(
            Icons.save,
          )),
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                right: -size.width * .13,
                // top: size.height * .1,
                child: SizedBox(
                  height: size.height * .85,
                  child: Image.asset(
                    "lib/assets/banners/body.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: size.width * .16,
                top: size.height * .13,
                child: Container(
                  height: inputMeasurementsController.t1.hasFocus ? size.height * .005 : 0,
                  width: inputMeasurementsController.t1.hasFocus ? size.width * .11 : 0,
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Positioned(
                  right: size.width * .0,
                  top: size.height * .17,
                  child: Container(
                    height: inputMeasurementsController.t2.hasFocus ? size.height * .005 : 0,
                    width: inputMeasurementsController.t2.hasFocus ? size.width * .42 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  right: size.width * .36,
                  top: size.height * .155,
                  child: Container(
                    height: inputMeasurementsController.t3.hasFocus ? size.height * .13 : 0,
                    width: inputMeasurementsController.t3.hasFocus ? size.width * .01 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  right: size.width * .355,
                  top: size.height * .27,
                  child: Container(
                    height: inputMeasurementsController.t4.hasFocus ? size.height * .005 : 0,
                    width: inputMeasurementsController.t4.hasFocus ? size.width * .12 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  right: size.width * .47,
                  top: size.height * .415,
                  child: Container(
                    height: inputMeasurementsController.t5.hasFocus ? size.height * .005 : 0,
                    width: inputMeasurementsController.t5.hasFocus ? size.width * .048 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  right: size.width * .05,
                  top: size.height * .23,
                  child: Container(
                    height: inputMeasurementsController.t6.hasFocus ? size.height * .005 : 0,
                    width: inputMeasurementsController.t6.hasFocus ? size.width * .32 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  right: size.width * .09,
                  top: size.height * .4,
                  child: Container(
                    height: inputMeasurementsController.t8.hasFocus ? size.height * .005 : 0,
                    width: inputMeasurementsController.t8.hasFocus ? size.width * .25 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  right: size.width * .06,
                  top: size.height * .45,
                  child: Container(
                    height: inputMeasurementsController.t9.hasFocus ? size.height * .005 : 0,
                    width: inputMeasurementsController.t9.hasFocus ? size.width * .3 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  right: size.width * .24,
                  top: size.height * .52,
                  child: Container(
                    height: inputMeasurementsController.t10.hasFocus ? size.height * .005 : 0,
                    width: inputMeasurementsController.t10.hasFocus ? size.width * .14 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  right: size.width * .35,
                  top: size.height * .75,
                  child: Container(
                    height: inputMeasurementsController.t11.hasFocus ? size.height * .005 : 0,
                    width: inputMeasurementsController.t11.hasFocus ? size.width * .05 : 0,
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  child: SingleChildScrollView(
                child: Container(
                  height: size.height * .9,
                  width: size.width * .48,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            child: Text(
                              "All measurement must be in Inches*",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 196, 40, 29),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            focusNode: inputMeasurementsController.t1,
                            keyboardType: TextInputType.number,
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t1.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t2.requestFocus();
                              });
                            },
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Neck")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t2.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t3.requestFocus();
                              });
                            },
                            focusNode: inputMeasurementsController.t2,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Shoulder Length")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t3.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t4.requestFocus();
                              });
                            },
                            focusNode: inputMeasurementsController.t3,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Arm hole")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t4.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t5.requestFocus();
                              });
                            },
                            focusNode: inputMeasurementsController.t4,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Biceps")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t5.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t6.requestFocus();
                              });
                            },
                            focusNode: inputMeasurementsController.t5,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Wrist")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t6.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t8.requestFocus();
                              });
                            },
                            focusNode: inputMeasurementsController.t6,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Bust")),
                          ),
                        ),
                        // SizedBox(
                        //   width: size.width * .4,
                        //   height: size.height * .06,
                        //   child: TextFormField(
                        //     onTap: () {
                        //       setState(() {
                        //         inputMeasurementsController.t7.requestFocus();
                        //       });
                        //     },
                        //     onFieldSubmitted: (value) {
                        //       setState(() {
                        //         inputMeasurementsController.t8.requestFocus();
                        //       });
                        //     },
                        //     focusNode: inputMeasurementsController.t7,
                        //     keyboardType: TextInputType.number,
                        //     decoration: InputDecoration(
                        //         border: OutlineInputBorder(),
                        //         contentPadding: EdgeInsets.symmetric(
                        //           vertical: size.height * .017,
                        //           horizontal: size.width * .02,
                        //         ),
                        //         label: Text("Chest")),
                        //   ),
                        // ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t8.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t9.requestFocus();
                              });
                            },
                            focusNode: inputMeasurementsController.t8,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Waist")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t9.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t10.requestFocus();
                              });
                            },
                            focusNode: inputMeasurementsController.t9,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Hip")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                inputMeasurementsController.t10.requestFocus();
                              });
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                inputMeasurementsController.t11.requestFocus();
                              });
                            },
                            focusNode: inputMeasurementsController.t10,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Thigh")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t11.requestFocus();

                              setState(() {});
                            },
                            focusNode: inputMeasurementsController.t11,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: const Text("Ankle")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
              Positioned(
                  child: SizedBox(
                width: size.width,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
