import 'package:explorergo/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:explorergo/screens/widgets/hotels.dart';
import '../widgets/BottomNavigationExplorerGo.dart';
import 'package:explorergo/screens/widgets/recommendation.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var safearea = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: mBlueColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationExplorerGo(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: safearea,
            ),
            SizedBox(
              height: 60,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Hey There!",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(3, 100, 176, 65)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.notifications_none_rounded,
                      color: mBlueColor,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Do you want to find hotels?",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(143, 0, 0, 0)),
              ),
            ),
            SizedBox(
              child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: mFillColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search hotels...",
                            hintStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Color.fromARGB(143, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              color: mBlueColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 60,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Popular Hotel",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(143, 0, 0, 0)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text("view all",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Color.fromARGB(143, 0, 0, 0)))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      child: const Hotels(
                          title: "Pan Pacific Sonargaon",
                          image: "/images/pacific.jpg",
                          location: "Dhaka, Bangladesh"),
                      onTap: () {
                        Navigator.pushNamed(context, '/pacific');
                      },
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/radisson');
                      },
                      child: const Hotels(
                          title: "Radisson Blu Chittagong",
                          image: "/images/radisson.jpg",
                          location: "Chittagong, Bangladesh"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Hotels(
                          title: "Rose View",
                          image: "/images/roseview.jpg",
                          location: "Sylhet, Bangladesh"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Recommended",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(143, 0, 0, 0)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text("view all",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                              color: Color.fromARGB(143, 0, 0, 0)))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Recommendation(
                        name: "InterContinental Dhala",
                        location: "Dhaka, Bangladesh",
                        image: "images/intercontinental.jpg"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
