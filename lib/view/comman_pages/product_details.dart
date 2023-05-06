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
            Row(
              children: [
                Text("Ivory 3 Peice suit"),
              ],
            )
          ],
        ),
      )),
    );
  }
}
