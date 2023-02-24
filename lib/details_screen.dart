import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:task1/utils/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.darkBlue,
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundColor: MyColors.white,
              child: Icon(Icons.bookmark_border, color:MyColors.darkBlue),
            ),
          )
        ],
        leading:  Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundColor: MyColors.white,
            child: Icon(
              Icons.arrow_back,
              color: MyColors.blue,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/unsplash_e7eqKQkpk_8.png",
              width: double.infinity,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              margin: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        "GHJK Engineering college",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 270,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                          style: TextStyle(
                              color: MyColors.mediumToDarkGray,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.darkGreen),
                    child: Column(
                      children:  [
                        Text(
                          "4.3",
                          style: TextStyle(color: MyColors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Icon(
                          Icons.star,
                          color: MyColors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            DefaultTabController(
              length: 4, // length of tabs
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: MyColors.lightWhite,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: const Offset(0, 3),
                          )
                        ],
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.3))),
                    child:  TabBar(
                      labelColor: MyColors.black,
                      unselectedLabelColor: MyColors.black,
                      indicatorColor: MyColors.darkBlue,
                      labelStyle:
                         const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                      tabs: const[
                        Tab(
                          text: 'About college ',
                        ),
                        Tab(text: 'Hostel facility'),
                        Tab(text: 'Q & A'),
                        Tab(text: 'Events'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context)
                        .size
                        .height, //height of TabBarView
                    child: TabBarView(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                "Description",
                                style: TextStyle(
                                    color: MyColors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                               Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                                style: TextStyle(
                                    color: MyColors.mediumToLightGray,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                               Text(
                                "Location",
                                style: TextStyle(
                                    color: MyColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Image.asset("assets/Background (1).png"),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                               Text(
                                "Student Review",
                                style: TextStyle(
                                    color: MyColors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.3),
                                                      offset: const Offset(
                                                          0.5, 0.5),
                                                      blurRadius: 4)
                                                ]),
                                            child: Image.asset(
                                              "assets/unsplash4.png",
                                            ),
                                          ),
                                        ),
                                        Image.asset("assets/Polygon 1.png")
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      "assets/unsplash3.png",
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      "assets/unsplash2.png",
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      "assets/unsplash1.png",
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Stack(
                                      children: [
                                        Image.asset("assets/Rectangle 211.png"),
                                         Positioned(
                                            top: 10,
                                            child: Text(
                                              "+12",
                                              style: TextStyle(
                                                  color: MyColors.darkBlue,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w800),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: MyColors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          offset: const Offset(1, 1),
                                          blurRadius: 6)
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Arun sai",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                     Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                                      style: TextStyle(
                                          color: MyColors.mediumToDarkGray,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, c) =>  Icon(
                                        Icons.star,
                                        color: MyColors.amber,
                                      ),
                                      onRatingUpdate: (updateRating) {},
                                      ignoreGestures: true,
                                      unratedColor: MyColors.gray,
                                      itemSize: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 25, right: 10),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 8),
                                      decoration: BoxDecoration(
                                          color: MyColors.darkBlue,
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/bed (3).png"),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                           Text(
                                            "4",
                                            style:
                                                TextStyle(color: MyColors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 8),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:  MyColors.darkBlue),
                                          color: MyColors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/bed (3).png",
                                              color: MyColors.black),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                           Text(
                                            "4",
                                            style:
                                                TextStyle(color: MyColors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 8),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:  MyColors.darkBlue),
                                          color: MyColors.white,
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/bed (3).png",
                                              color: MyColors.black),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                           Text(
                                            "4",
                                            style:
                                                TextStyle(color: MyColors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 8),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: MyColors.darkBlue),
                                          color: MyColors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/bed (3).png",
                                              color: MyColors.black),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                           Text(
                                            "4",
                                            style:
                                                TextStyle(color: MyColors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/bed2.png",
                                    scale: 1.2,
                                  ),
                                  Image.asset("assets/bed1.png", scale: 1.2),
                                  Image.asset("assets/bed.png", scale: 1.2),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              DotsIndicator(
                                decorator:  DotsDecorator(
                                    spacing: const EdgeInsets.only(top: 10, left: 5),
                                    size: const Size(10, 10),
                                    activeColor: MyColors.darkBlue),
                                dotsCount: 7,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "GHJK Engineering Hostel",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        color: MyColors.darkGreen,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Row(
                                      children:  [
                                        Text(
                                          "4.3",
                                          style: TextStyle(color: MyColors.white),
                                        ),
                                       const SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: MyColors.white,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children:  [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: MyColors.darkBlue,
                                  ),
                                 const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: MyColors.lightBlack),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                               SizedBox(
                                 height: 100,
                                child:  Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                                  style: TextStyle(
                                      color: MyColors.mediumToLightGray,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                               Align(
                                alignment: Alignment.topLeft,
                                child:  Text(
                                  "Facilities",
                                  style: TextStyle(
                                    color: MyColors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/university 1.png"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                   Text(
                                    "College in 400mtrs",
                                    style: TextStyle(
                                        color: MyColors.lightBlack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                    ),

                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/bath (1) 1.png"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                   Text(
                                    "Bathrooms : 2",
                                    style: TextStyle(
                                        color:MyColors.lightBlack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14
                                    ),

                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                        const Center(
                          child: Text('Display Tab 3',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                        const Center(
                          child: Text('Display Tab 4',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              color: MyColors.darkBlue,
              borderRadius: BorderRadius.circular(7)),
          child:  Text(
            "Apply Now",
            textAlign: TextAlign.center,
            style: TextStyle(
                color:MyColors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
