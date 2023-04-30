import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:tailormade/Util/globalsize.dart';
import 'package:tailormade/Util/temp_var.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    var count = 1.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
            fontSize: size.height * .035,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height * .9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shipping Address",
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person),
                              Text(
                                "Jenny Wilson",
                                style: TextStyle(
                                  fontSize: size.height * .02,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Text("Edit")
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text("3805 Feathers Hooves Drive"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.call),
                              Text("917-715-1056"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Text("Order Summery"),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: SizedBox(
                                    height: size.height * .1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                suits[index]['text'].toString(),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: size.height * .02,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * .03,
                                                width: size.width * .09,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.delete_outline,
                                                      size: size.height * .02,
                                                    )),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "fabric :",
                                                style: TextStyle(
                                                  fontSize: size.height * .015,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                "Velvet",
                                                style: TextStyle(
                                                  fontSize: size.height * .015,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "\$20",
                                                  style: TextStyle(
                                                    fontSize: size.height * .015,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                ObxValue(
                                                    (data) => SizedBox(
                                                          child: Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  data--;
                                                                },
                                                                child: Icon(
                                                                  Icons.remove,
                                                                  size: size.height * .02,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                                                child: Text(
                                                                  "$data",
                                                                  style: TextStyle(
                                                                    fontSize: size.height * .015,
                                                                    fontWeight: FontWeight.w500,
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  data++;
                                                                },
                                                                child: Icon(
                                                                  Icons.add,
                                                                  size: size.height * .02,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    count)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub Total",
                            style: TextStyle(
                              fontSize: size.height * .015,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "\$44",
                            style: TextStyle(
                              fontSize: size.height * .015,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping Charges",
                            style: TextStyle(
                              fontSize: size.height * .015,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "\$4",
                            style: TextStyle(
                              fontSize: size.height * .015,
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub Total",
                            style: TextStyle(
                              fontSize: size.height * .015,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF304F8C),
                            ),
                          ),
                          Text(
                            "\$48",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.height * .015,
                              color: Color(0xFF304F8C),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Center(
                    child: SizedBox(
                      height: size.height * .07,
                      width: size.width * .8,
                      child: FilledButton.tonal(
                        onPressed: () {
                          Get.toNamed("/checkout");
                        },
                        child: Text(
                          "Go to Payment",
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
            ),
          ),
        ),
      ),
    );
  }
}
