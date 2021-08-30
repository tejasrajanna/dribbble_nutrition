import 'package:flutter/material.dart';

import 'build_card.dart';

class BuildCardList extends StatelessWidget {
  const BuildCardList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BuildCard(
                        cardTitle: 'WEIGHT',
                        info: '300',
                        unit: 'G',
                      ),
                      SizedBox(width: 10.0,),
                      BuildCard(
                        cardTitle: 'CALORIES', 
                        info: '267', 
                        unit: 'CAL'
                      ),
                      SizedBox(width: 10.0,),
                      BuildCard(
                        cardTitle: 'VITAMINS', 
                        info: 'A, B6', 
                        unit: 'VIT',
                      ),
                      SizedBox(width: 10.0,),
                      BuildCard(
                        cardTitle: 'AVAIL', 
                        info: 'NO', 
                        unit: 'AV',
                      ),
                    ],
                  ),
                ); 
  }
}