import 'package:explorergo/constants/color_constant.dart';
import 'package:flutter/material.dart';

import '../widgets/BottomNavigationExplorerGo.dart';

class busticket extends StatefulWidget {
  const busticket({Key? key}) : super(key: key);

  @override
  _busticketState createState() => _busticketState();
}

class _busticketState extends State<busticket> {
  @override
  Widget build(BuildContext context) {
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
      bottomNavigationBar: BottomNavigationExplorerGo(),
      body: Container(
        width: double.infinity,
        height: 400,
        color: mBackgroundColor,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('/images/busticketlogo.png'),
                      fit: BoxFit.fitWidth),
                )),
            // Figma Flutter Generator Rectangle13Widget - RECTANGLE
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(250, 250, 250, 1),
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.directions_bus_filled_outlined),
                        hintText: 'Enter Source'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.directions_bus_filled_rounded),
                        hintText: 'Enter Destination'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 48,
                        child: Center(
                            child: Text(
                          'Search',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(9, 9, 9, 1),
                            fontFamily: 'Inter',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contdec(String img) {
    return Container(
        width: 30,
        height: 30,
        margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.fitWidth),
        ));
  }
}
