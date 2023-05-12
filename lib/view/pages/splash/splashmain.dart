import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tailormade/Util/globalsize.dart';

class SplashMain extends StatefulWidget {
  const SplashMain({super.key});

  @override
  State<SplashMain> createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain> {
  var maxheight = size.height * .2;

  var maxwidth = size.width * .4;

  var wid = size.width * .09;
  var hid = size.height * .05;
  var xx = size.width * .45;
  var yy = size.height * 0;

  var x = size.width * .3;
  var y = size.height * .4;

  var t1 = 0.0;
  var t2 = 0.0;
  var imgscale = 1.0;
  @override
  Widget build(BuildContext context) {
    Color clr = Theme.of(context).colorScheme.secondary;
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                top: yy,
                left: xx,
                child: Container(
                  // color: Colors.amber.shade100,
                  child: AnimatedContainer(
                    width: wid,
                    height: hid,
                    duration: Duration(milliseconds: 420),
                    decoration: BoxDecoration(
                      color: clr,
                      shape: BoxShape.circle,
                    ),
                    curve: Curves.easeInBack,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Image.asset(
                        'lib/assets/iconpng/sewing.png',
                        scale: imgscale,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * .61,
                left: size.width * .17,
                child: Column(
                  children: [
                    Text(
                      "Tailor Made",
                      style: TextStyle(
                        fontSize: size.height * t1,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "E-Tailoring For your Suiting Needs",
                      style: TextStyle(
                        fontSize: size.height * t2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                right: 170,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        drop();
                        Timer(Duration(milliseconds: 400), () {
                          expand();
                        });
                      },
                      child: Text("init"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          wid = size.width * .09;
                          hid = size.height * .05;
                          xx = size.width * .45;
                          yy = size.height * .0;

                          x = size.width * .3;
                          y = size.height * .4;

                          t1 = .0;
                          t2 = .0;
                          imgscale = 1.0;
                        });
                      },
                      child: Text("undo"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void drop() {
    setState(() {
      yy = y + 150;
    });
  }

  void expand() {
    setState(() {
      xx = x;
      yy = yy - 150;
      wid = maxwidth;
      hid = maxheight;
    });
    Timer(Duration(milliseconds: 400), () {
      setState(() {
        t1 = .035;
        t2 = .025;
      });
    });
  }
}
