import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailormade/Util/globalsize.dart';

class InputMeasurementsController extends GetxController {
  FocusNode t1 = FocusNode();
  FocusNode t2 = FocusNode();
  FocusNode t3 = FocusNode();
  FocusNode t4 = FocusNode();
  FocusNode t5 = FocusNode();
  FocusNode t6 = FocusNode();
  FocusNode t7 = FocusNode();
  FocusNode t8 = FocusNode();
  FocusNode t9 = FocusNode();
  FocusNode t10 = FocusNode();
  FocusNode t11 = FocusNode();
  // Rx<FocusNode> newfocus = FocusNode() as Rx<FocusNode>;
  var newfocus;
  void init() {
    super.onInit();
  }

  onFocusChange() {
    newfocus.value = t1;
    final widgetmap = {
      t1: Positioned(
        right: size.width * .16,
        top: size.height * .13,
        child: Container(
          height: size.height * .005,
          width: size.width * .11,
          decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
        ),
      ),
      t2: Positioned(
          right: size.width * .36,
          top: size.height * .155,
          child: Container(
            height: size.height * .13,
            width: size.width * .01,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t3: Positioned(
          right: size.width * .355,
          top: size.height * .27,
          child: Container(
            height: size.height * .005,
            width: size.width * .12,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t4: Positioned(
          right: size.width * .47,
          top: size.height * .415,
          child: Container(
            height: size.height * .005,
            width: size.width * .048,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t5: Positioned(
          right: size.width * .0,
          top: size.height * .17,
          child: Container(
            height: size.height * .005,
            width: size.width * .42,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t6: Positioned(
          right: size.width * .05,
          top: size.height * .23,
          child: Container(
            height: size.height * .005,
            width: size.width * .32,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t7: Positioned(
          right: size.width * .085,
          top: size.height * .33,
          child: Container(
            height: size.height * .005,
            width: size.width * .25,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t8: Positioned(
          right: size.width * .09,
          top: size.height * .4,
          child: Container(
            height: size.height * .005,
            width: size.width * .25,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t9: Positioned(
          right: size.width * .06,
          top: size.height * .47,
          child: Container(
            height: size.height * .005,
            width: size.width * .31,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t10: Positioned(
          right: size.width * .24,
          top: size.height * .52,
          child: Container(
            height: size.height * .005,
            width: size.width * .14,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
      t11: Positioned(
          right: size.width * .35,
          top: size.height * .75,
          child: Container(
            height: size.height * .005,
            width: size.width * .05,
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
          )),
    };
    return widgetmap[newfocus.value] ?? SizedBox();
  }
}
