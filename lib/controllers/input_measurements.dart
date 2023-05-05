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
    update();
  }
}
