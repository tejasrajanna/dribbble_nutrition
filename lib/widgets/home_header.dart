import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(
              top: 15.0, 
              left:10.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {}, 
                        icon: Icon(Icons.filter_list_alt),
                        color: Colors.white,
                        ),
                      IconButton(
                        onPressed: () {}, 
                        icon: Icon(Icons.menu_rounded),
                        color: Colors.white,
                        ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}