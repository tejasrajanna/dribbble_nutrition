import 'package:flutter/material.dart';

class HomeHeading extends StatelessWidget {
  const HomeHeading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40),
        child: Row(
          children: [
            Text('Healthy',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
          SizedBox(width: 10.0,),
            Text('Food',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                ),
          ],
        )
        );
  }
}