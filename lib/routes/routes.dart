import 'package:get/get.dart';
import 'package:tailormade/view/pages/cart.dart';
import 'package:tailormade/view/pages/checkout.dart';
import 'package:tailormade/view/pages/dashboard.dart';
import 'package:tailormade/view/pages/measurement_inputs.dart';
import 'package:tailormade/view/pages/measurements.dart';

var routes = [
  GetPage(
    name: "/dashboard",
    page: () => Dashboard(),
  ),
  GetPage(
    name: "/cart",
    page: () => Cart(),
  ),
  GetPage(
    name: "/checkout",
    page: () => Checkout(),
  ),
  GetPage(
    name: "/Measurements",
    page: () => Measurements(),
  ),
  GetPage(
    name: "/MeasurementInput",
    page: () => MeasurementInput(),
  ),
];
