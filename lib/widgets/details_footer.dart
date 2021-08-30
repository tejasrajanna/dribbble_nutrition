import 'package:flutter/material.dart';

class DetailsFooter extends StatelessWidget {
  const DetailsFooter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  color: Colors.deepPurpleAccent[400],
                  ),
                height: 50.0,
                child: Center(
                  child: Text(
                    '\$52.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                ),
              );
      
  }
}