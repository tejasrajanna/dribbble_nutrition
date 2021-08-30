import 'package:dribbble_travel/widgets/build_card_list.dart';
import 'package:dribbble_travel/widgets/details_footer.dart';
import 'package:dribbble_travel/widgets/quantity_price_row.dart';
import 'package:flutter/material.dart';


class DetailsLayout extends StatelessWidget {
  const DetailsLayout({ Key? key,
  this.heroTag, 
  this.foodName, 
  this.foodPrice }) : super(key: key);

  final heroTag;
  final foodName;
  final foodPrice;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 82.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
            ),
            Positioned(
              top: 75.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0),
                  ),
                color: Colors.white,
                ),
              height: MediaQuery.of(context).size.height -100.0,
              width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              top: 30.0,
              left: MediaQuery.of(context).size.width/2 - 100.0,
              child: Hero(
                tag: heroTag, 
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(heroTag),
                      fit: BoxFit.cover
                    ),
                  ),
                height: 200.0,
                width: 200.0,
                ),
                ) ,
              ),
            Positioned(
              top: 250.0,
              left: 25.0,
              right: 25.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                SizedBox(height: 20.0,),
               QuantityPriceRow(foodPrice: this.foodPrice,),
                SizedBox(height: 50.0,),
              BuildCardList(),
              SizedBox(height: 20.0,),
              DetailsFooter(),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}