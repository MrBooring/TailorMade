import 'package:get/get.dart';
import 'package:tailormade/view/pages/cart.dart';
import 'package:tailormade/view/pages/checkout.dart';
import 'package:tailormade/view/pages/dashboard.dart';

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
];
