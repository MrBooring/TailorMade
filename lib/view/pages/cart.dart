import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:tailormade/Util/globalsize.dart';
import 'package:tailormade/Util/temp_var.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var count = 1.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
            fontSize: size.height * .035,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
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
                            SizedBox(
                              height: size.height * .1,
                              width: size.width * .25,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  suits[index]['img'].toString(),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
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
                                                fontWeight: FontWeight.w500,
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
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              "Velvet",
                                              style: TextStyle(
                                                fontSize: size.height * .015,
                                                fontWeight: FontWeight.w500,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
