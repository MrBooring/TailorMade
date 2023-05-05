import 'package:flutter/material.dart';
import 'package:get/get.dart';

var dashitems = [
  "Give Measurement",
  "Fabric Collection",
  "Customize your set",
  "Tailor Made Clothes",
  "More",
];

List<Map<String, dynamic>> dashlogo = [
  {
    'png': 'lib/assets/iconpng/measure.png',
    'color': Colors.pink.shade200,
    'call': () {
      Get.toNamed("/Measurements");
    }
  },
  {
    'png': 'lib/assets/iconpng/fabric.png',
    'color': Colors.yellow.shade200,
    'call': () {
      Get.toNamed("/FabricCollection");
    },
  },
  {
    'png': 'lib/assets/iconpng/suit.png',
    'color': Colors.blue.shade200,
    'call': () {},
  },
  {
    'png': 'lib/assets/iconpng/sewing.png',
    'color': Colors.teal.shade200,
    'call': () {},
  },
  {
    'png': 'lib/assets/iconpng/plus.png',
    'color': Colors.purple.shade200,
    'call': () {},
  },
];

var fabric = [
  'lib/assets/fabric/f1.jpg',
  'lib/assets/fabric/f2.jpg',
  'lib/assets/fabric/f3.jpg',
  'lib/assets/fabric/f4.jpg',
];

var suits = [
  {
    'img': "lib/assets/suits/s2.jpg",
    'text': "Textured Black Tuxedo",
    'r': "4.7",
  },
  {
    'img': "lib/assets/suits/s1.jpeg",
    'text': "Ivory 3 Piece Suit",
    'r': "4.0",
  },
];

List<Map<String, dynamic>> collfabrics = [
  {
    'png': 'lib/assets/fabric/CottonTwill.jpeg',
    'text': "CottonTwill",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/linen.jpg',
    'text': "Linen",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/Linen Blend.jpg',
    'text': "Linen Blend",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/Polyester-Viscose Windowpane.jpg',
    'text': "Polyester Viscose",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/Satin.jpg',
    'text': "Satin",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/Silk Blend.jpg',
    'text': "Silk Blend",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/Stretch Wool Suiting.jpg',
    'text': "Stretch Wool",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/Wool Twill.jpg',
    'text': "Wool Twill",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/Worsted Wool.jpeg',
    'text': "Worsted Wool",
    'call': () {},
  },
  {
    'png': 'lib/assets/fabric/velvet.jpg',
    'text': "Velvet",
    'call': () {},
  },
];
