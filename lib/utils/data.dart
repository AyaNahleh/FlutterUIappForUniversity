import 'package:flutter/material.dart';
class Data{
  static List navigationButtons =[
    {"active_icon": const Icon(Icons.home), "label": "Search"},
    {"active_icon": Image.asset("assets/saved.png"), "label": "saved"},
    {"active_icon": const Icon(Icons.camera_outlined), "label": "saved"},
    {"active_icon": const Icon(Icons.person), "label": "Account"}
  ];

  static List dummyImage = [
    {"image": Image.asset("assets/unsplash4.png")},
    {"image": Image.asset("assets/unsplash3.png")},
    {"image": Image.asset("assets/unsplash2.png")},
    {"image": Image.asset("assets/unsplash1.png")}
  ];

  static List dummyCategory = [
    {
      "title": "Top Colleges",
      "des":
      "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.",
      "image": Image.asset("assets/Rectangle 141.png"),
      "number": "+126 ",
      "institute": "Colleges"
    },
    {
      "title": "Top Schools",
      "des":
      "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
      "image": Image.asset("assets/Rectangle 142.png"),
      "number": "+106 ",
      "institute": "Schools"
    },
    {
      "title": "Exams",
      "des":
      "Find an end to end information about the exams that are happening in India",
      "image": Image.asset("assets/Rectangle 143.png"),
      "number": "+16 ",
      "institute": "Exams"
    },
  ];

}