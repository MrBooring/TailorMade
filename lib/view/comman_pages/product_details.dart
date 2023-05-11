import 'package:flutter/material.dart';
import 'package:tailormade/Util/globalsize.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .82,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * .55,
                      width: size.width,
                      child: Stack(
                        children: [
                          Image.asset(
                            'lib/assets/banners/3peice.jpg',
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                              right: 2,
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.send),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ivory 3 Peice suit",
                            style: TextStyle(
                              fontSize: size.height * .025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star_border),
                            ],
                          ),
                          Container(
                            width: size.width,
                            height: size.height * .08,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(color: Colors.green.withOpacity(.45)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Special Price",
                                  style: TextStyle(
                                    color: Colors.green.shade800,
                                    fontSize: size.height * .02,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "65% off",
                                      style: TextStyle(
                                        color: Colors.green.shade800,
                                        fontSize: size.height * .025,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "8999",
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: size.height * .025,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "₹3149",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: size.height * .025,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: size.width * .5)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.grey.shade400,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Check Delivery Status",
                            style: TextStyle(
                              fontSize: size.height * .02,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: size.height * .01,
                            width: size.width,
                          ),
                          SizedBox(
                            width: size.width * .7,
                            height: size.height * .06,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Pin Code",
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(horizontal: size.width * .03, vertical: size.height * .01),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.grey.shade400,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height * .025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: size.height * .07,
                            width: size.width,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return CircleAvatar(
                                  radius: size.height * .04,
                                  child: Text(
                                    "User$index",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * .01,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.grey.shade400,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Icons.local_shipping_outlined),
                              ),
                              Text(
                                "Tailoring ETA 5 days",
                                style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: size.height * .018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Icons.undo),
                              ),
                              Text(
                                "24 hour retrun policy TnC*",
                                style: TextStyle(
                                  fontSize: size.height * .018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Icons.attach_money_sharp),
                              ),
                              Text(
                                "Cash on Delivery Available ",
                                style: TextStyle(
                                  fontSize: size.height * .018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.grey.shade400,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Details",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: size.height * .025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * .1,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "Ideal for",
                                            style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "Men",
                                            style: TextStyle(
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "Patten",
                                            style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "Solid",
                                            style: TextStyle(
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "Type",
                                            style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "3 Piece",
                                            style: TextStyle(
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "Fabric",
                                            style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "#345 Cotton Linen Blend",
                                            style: TextStyle(
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "Trouser Clouser",
                                            style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * .4,
                                          child: Text(
                                            "Button",
                                            style: TextStyle(
                                              fontSize: size.height * .016,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ThemeData().scaffoldBackgroundColor,
                      shape: ContinuousRectangleBorder(),
                      elevation: 0,
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Buy Now"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ThemeData().primaryColorLight,
                      shape: ContinuousRectangleBorder(),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
