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
        title: Text("Input Measurement"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.small(
          onPressed: () {},
          child: Icon(
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
              GetBuilder<InputMeasurementsController>(
                  init: InputMeasurementsController(),
                  builder: (controller) {
                    return inputMeasurementsController.onFocusChange();
                  }),
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
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            focusNode: inputMeasurementsController.t1,
                            keyboardType: TextInputType.number,
                            onTap: () {
                              inputMeasurementsController.t1.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t2.requestFocus();
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Neck")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t2.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t3.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t2,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Shoulder Length")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t3.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t4.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t3,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Arm hole")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t4.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t5.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t4,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Biceps")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t5.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t6.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t5,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Wrist")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t6.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t7.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t6,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Shoulder")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t7.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t8.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t7,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Chest")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t8.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t9.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t8,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Waist")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t9.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t10.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t9,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Hip")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t10.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            onFieldSubmitted: (value) {
                              inputMeasurementsController.t11.requestFocus();
                            },
                            focusNode: inputMeasurementsController.t10,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Thigh")),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .4,
                          height: size.height * .06,
                          child: TextFormField(
                            onTap: () {
                              inputMeasurementsController.t11.requestFocus();
                              inputMeasurementsController.onFocusChange();
                            },
                            focusNode: inputMeasurementsController.t11,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * .017,
                                  horizontal: size.width * .02,
                                ),
                                label: Text("Ankle")),
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
