import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tailormade/Util/globalsize.dart';
import 'package:tailormade/Util/temp_var.dart';

class FabricCollection extends StatefulWidget {
  const FabricCollection({super.key});

  @override
  State<FabricCollection> createState() => _FabricCollectionState();
}

class _FabricCollectionState extends State<FabricCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fabric Collection",
          style: TextStyle(
            fontSize: size.height * .035,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          height: size.height * .9,
          child: Column(
            children: [
              SizedBox(
                height: size.height * .25,
                width: size.width,
                child: Image.asset(
                  "lib/assets/banners/banner2.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemCount: collfabrics.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          width: size.width * .2,
                          height: size.height * .1,
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            backgroundImage: AssetImage(collfabrics[index]['png']),
                          ),
                        ),
                        Text(
                          collfabrics[index]['text'],
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: size.height * .02,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
