import 'package:flutter/material.dart';
import 'package:task1/utils/colors.dart';
import 'package:task1/utils/data.dart';
import 'package:task1/widget/bottom_navigation_bar.dart';

import 'category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  String? value;

  Future showModelSheet(context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        "Sort by",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: MyColors.black),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon:  Icon(
                          Icons.close,
                          color: MyColors.darkGray,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: MyColors.gray,
                    thickness: 1,
                  ),

                  radioListTileWidget(setState, "assets/education.png",
                      "Bachelor of Technology", "1"),
                  radioListTileWidget(setState, "assets/sketch.png",
                      "Bachelor of Architecture", "2"),
                  radioListTileWidget(
                      setState, "assets/pharmacy.png", "Pharmacy", "3"),
                  radioListTileWidget(
                      setState, "assets/balance.png", "Law", "4"),
                  radioListTileWidget(
                      setState, "assets/management.png", "Management", "5"),
                ],
              ),
            ),
          );
        });
      },
    );
  }

  RadioListTile<String> radioListTileWidget(
    StateSetter setState,
    String imageName,
    String title,
    String val,
  ) {
    return RadioListTile(
      title: Row(
        children: [
          Image.asset(imageName),
          const SizedBox(
            width: 15,
          ),
          Text(title),
        ],
      ),
      value: val,
      controlAffinity: ListTileControlAffinity.trailing,
      activeColor: MyColors.darkBlue,
      groupValue: value,
      onChanged: (val) {
        setState(() {
          value = val.toString();
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CategoryScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100, 225),
          child: Container(
            decoration:  BoxDecoration(
                color: MyColors.darkBlue,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26, top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            "Find your own way",
                            style: TextStyle(
                                color: MyColors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Search in 600 colleges around!",
                            style: TextStyle(
                                color: MyColors.lightGray,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/Vector.png"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColors.white,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon:  Icon(
                              Icons.search,
                              color: MyColors.lightGray,
                            ),
                            hintText: "Search for colleges, schools.....",
                            hintStyle:  TextStyle(
                                color: MyColors.lightGray,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MyColors.white),
                          child:  Center(
                            child: ImageIcon(
                             const AssetImage("assets/Vector1.png"),
                              color: MyColors.darkBlue,
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: GridView(
            padding: const EdgeInsets.all(25),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                mainAxisExtent: 150,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30),
            children: Data.dummyCategory
                .map(
                  (e) => GestureDetector(
                    onTap: () async {
                      await showModelSheet(context);
                    },
                    child: Stack(
                      children: [
                        Container(
                          child: e["image"],
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e["title"],
                                style:  TextStyle(
                                    color: MyColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 100,
                                width: 250,
                                child: Text(
                                  e["des"],
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style:  TextStyle(
                                      wordSpacing: 2,
                                      color: MyColors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            right: 10,
                            bottom: 10,
                            child: Row(
                              children: [
                                Text(
                                  e["number"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10),
                                ),
                                Text(
                                  e["institute"],
                                  style:  TextStyle(
                                      color: MyColors.darkGray,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                )
                .toList()),
        bottomNavigationBar: const BottomNavigationBarWidget()
      ),
    );
  }
}

// class RPSCustomPainter extends CustomPainter{
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//
//     Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 1;
//
//
//     Path path0 = Path();
//     path0.moveTo(0,0);
//     path0.lineTo(0,size.height);
//     path0.quadraticBezierTo(size.width*0.6592000,size.height*1.0238143,size.width*0.6652083,size.height*0.9869000);
//     path0.cubicTo(size.width*0.6877000,size.height*0.9627000,size.width*0.6646750,size.height*0.8964000,size.width*0.6860500,size.height*0.8239429);
//     path0.cubicTo(size.width*0.7319583,size.height*0.7417857,size.width*0.9866333,size.height*0.8565571,size.width*0.9982667,size.height*0.7164286);
//     path0.quadraticBezierTo(size.width*1.0153750,size.height*0.7165714,size.width*0.9975000,size.height*0.0057143);
//     path0.lineTo(size.width*0.8257417,0);
//     path0.lineTo(size.width*0.6180500,0);
//     path0.lineTo(size.width*0.0302000,0);
//
//     canvas.drawPath(path0, paint0);
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
