import 'package:flutter/material.dart';
import 'package:task1/details_screen.dart';
import 'package:task1/utils/colors.dart';
import 'package:task1/widget/bottom_navigation_bar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(100, 150),
          child: Container(
            height: 150,
            decoration:  BoxDecoration(
                color: MyColors.darkBlue,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Row(
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
                            color:MyColors.lightGray,
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
            ),
          ),
        ),

        body: GestureDetector(
          onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) =>  const DetailsScreen()));

          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: MyColors.black)),
                child: const Text("MVSH Engineering college "),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: const[
                     DetailsWidget(imageName: "assets/unsplash_Ucr4Yp-t364.png",title: "GHJK Engineering college",hint: "More than 1000+ students have been placed",),
                    SizedBox(height: 40,),
                     DetailsWidget(imageName: "assets/unsplash_1iuxWsIZ6ko.png",title: "Bachelor of Technology",hint: "Lorem ipsum dolor sit amet, consectetur adipiscing ",),
                    SizedBox(height: 20,)

                  ],
                ),
              )

            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget()
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key, required this.imageName, required this.title, required this.hint,
  }) : super(key: key);

  final String imageName;
  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
                color: MyColors.white,
                boxShadow:  [
                  BoxShadow(
                      color: MyColors.gray,
                      offset:const Offset(3, 3),
                      blurRadius: 4)
                ],
                border: Border.all(color: MyColors.gray),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Image.asset(
                  imageName,width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(title,style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17
                      ),),
                      Container(
                        padding: const EdgeInsets.all(5),

                        decoration: BoxDecoration(
                            color:MyColors.darkGreen,
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child: Row(
                          children: [
                            Text("4.3", style: TextStyle(color: MyColors.white),),
                            const SizedBox(width: 5,),
                            Icon(Icons.star,color: MyColors.white,size: 20,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       const SizedBox(
                        width: 230,
                        child:  Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                        style: TextStyle(
                          color: Color(0xFF8E8E8E),
                          fontSize: 9,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                        const SizedBox(width: 10,),
                        Material(
                          color: MyColors.mediumToDarkGray,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: (){},
                            child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Apply Now",style: TextStyle(color: MyColors.white),),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(color: MyColors.gray,height: 10,thickness: 1,),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Image.asset("assets/icon.png"),
                       Text(
                        hint,
                        style:  TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: MyColors.mediumToDarkGray
                        ),
                      ),
                      const Spacer(),
                       Icon(Icons.remove_red_eye_outlined,color: MyColors.mediumToDarkGray),
                      const SizedBox(width: 7,),
                       Text(
                        "468+",style: TextStyle(
                          color: MyColors.mediumToDarkGray
                      ),
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
            left: 30,

            child:Row(
              children:  [
                 CircleAvatar(
                  backgroundColor: MyColors.white,
                  child: Icon(Icons.share,color: MyColors.black,),
                ),
                const SizedBox(width: 250,),
                CircleAvatar(
                  backgroundColor: MyColors.white,
                  child: Icon(Icons.bookmark_border,color: MyColors.black,),
                )

              ],
            ),),
      ],
    );
  }
}
