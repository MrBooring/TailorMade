import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tailormade/Util/globalsize.dart';

class MeasurementInput extends StatefulWidget {
  const MeasurementInput({super.key});

  @override
  State<MeasurementInput> createState() => _MeasurementInputState();
}

class _MeasurementInputState extends State<MeasurementInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Measurement"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            right: -size.width * .2,
            // top: size.height * .1,
            child: SizedBox(
              height: size.height * .9,
              child: Image.asset(
                "lib/assets/banners/body.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
