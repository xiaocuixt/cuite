import 'package:cuite/misc/colors.dart';
import 'package:cuite/widgets/app_button.dart';
import 'package:cuite/widgets/app_large_text.dart';
import 'package:cuite/widgets/app_text.dart';
import 'package:cuite/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  )
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/mountain.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 320,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 40),
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosemite",
                          color: Colors.black.withOpacity(0.8),
                        ),
                        AppLargeText(text: "\$250", color: AppColors.mainColor),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: AppColors.mainColor),
                        SizedBox(
                          width: 5,
                        ),
                        AppText(
                            text: "USA, California",
                            color: AppColors.textColor1)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: index < gottenStars
                                    ? AppColors.starColor
                                    : AppColors.textColor2);
                          }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(text: "(4.0)", color: AppColors.textColor2)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                        text: "Number of people in your group",
                        color: AppColors.mainTextColor),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                        children: List.generate(5, (index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: AppButton(
                              size: 50,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              text: (index + 1).toString(),
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground),
                        ),
                      );
                    })),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8)),
                    SizedBox(
                      height: 10,
                    ),
                    AppText(
                        text:
                            "You must go for a trival, Travelling helps get rid of the work,, Travelling helps get rid of the work, Travelling helps get rid of the work Go to the mountains to see the nature.",
                        color: AppColors.mainTextColor)
                  ]),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(children: [
              AppButton(
                  size: 60,
                  color: AppColors.textColor2,
                  backgroundColor: Colors.white,
                  borderColor: AppColors.textColor2,
                  isIcon: true,
                  icon: Icons.favorite_border),
              SizedBox(
                width: 20,
              ),
              ResponsiveButton(
                isResponsive: true,
              )
            ]),
          )
        ],
      ),
    ));
  }
}
