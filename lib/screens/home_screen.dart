import 'dart:html';

import 'package:explorergo/constants/color_constant.dart';
import 'package:explorergo/constants/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../models/carousel_model.dart';
import '../widgets/BottomNavigationExplorerGo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mBackgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/ExplorerGo2.png',
                fit: BoxFit.fill,
                height: 50,
              ),
            ],
          ),
          elevation: 0,
        ),
        backgroundColor: mBackgroundColor,
        bottomNavigationBar: BottomNavigationExplorerGo(),
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              //promos section
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 24),
                child: Text(
                  "Exclusive Discounts For You!!!",
                  style: mTitleStyle,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: Swiper(
                        onIndexChanged: (index) {
                          setState(() {
                            _current = index;
                          });
                        },
                        autoplay: true,
                        layout: SwiperLayout.DEFAULT,
                        itemCount: carousels.length,
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(carousels[index].image),
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: map<Widget>(carousels, (index, image) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              height: 6,
                              width: 6,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? mBlueColor
                                      : mGreyColor),
                            );
                          }),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'More...',
                              style: mMoreDiscountStyle,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, bottom: 24),
                child: Text(
                  "Make You Custon Booking...",
                  style: mTitleStyle,
                ),
              ),
              Container(
                height: 144,
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    //air ticket, bus ticket
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                color: mFillColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: mBorderColor, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.flight_rounded),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Flight Ticket',
                                          style: mTitleStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 120,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                color: mFillColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: mBorderColor, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.bus_alert_rounded),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Bus Ticket',
                                          style: mTitleStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 120,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, 'busticket');
                            },
                          ),
                        )
                      ],
                    ),
                    //train ticket, hotel room
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                color: mFillColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: mBorderColor, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.train_rounded),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Train Ticket',
                                          style: mTitleStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 120,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              padding: EdgeInsets.only(left: 16),
                              height: 64,
                              decoration: BoxDecoration(
                                color: mFillColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: mBorderColor, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.hotel),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Hotel Rooms',
                                          style: mTitleStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 120,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/dash');
                            },
                          ),
                        ),
                      ],
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
}
