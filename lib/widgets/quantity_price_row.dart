import 'package:flutter/material.dart';

class QuantityPriceRow extends StatelessWidget {
  const QuantityPriceRow({ Key? key,  this.foodPrice}) : super(key: key);

final foodPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      foodPrice,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        color: Colors.grey,
                      ),
                    ),
                  Container(
                    height: 25.0,
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  Container(
                    width: 125.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: Color(0xFF7A9BEE),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color(0xFF7A9BEE),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 20.0,
                              ),
                          ),
                        ),
                      ),
                    Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                      ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Color(0xFF7A9BEE),
                              size: 20.0,
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                  ],
                );
  }
}