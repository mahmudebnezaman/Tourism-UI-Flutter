import 'package:explorergo/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavigationExplorerGo extends StatefulWidget {
  const BottomNavigationExplorerGo({Key? key}) : super(key: key);

  @override
  State<BottomNavigationExplorerGo> createState() =>
      _BottomNavigationExplorerGoState();
}

class _BottomNavigationExplorerGoState
    extends State<BottomNavigationExplorerGo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: mFillColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tour_rounded),
            label: 'Packages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            label: 'My Acocunt',
          ),
        ],
      ),
    );
  }
}
