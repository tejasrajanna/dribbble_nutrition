import 'package:dribbble_travel/widgets/build_food_item.dart';
import 'package:dribbble_travel/widgets/footer.dart';
import 'package:flutter/material.dart';

class ListFoodItems extends StatelessWidget {
  const ListFoodItems({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
          primary: false,
          padding: EdgeInsets.only(
            left: 25.0,
            right: 20.0,
          ),
          children: [
            Padding(
            padding: EdgeInsets.only(
                top: 45,
              ),
            child: Container(
              height: MediaQuery.of(context).size.height - 350.0,
              child: ListView(
                children: [
                  BuildFoodItem(
                    imgPath:'assets/plate1.png', 
                    foodName: 'Salmon Bowl', 
                    price: '\$24.00'),
                  BuildFoodItem(
                    imgPath:'assets/plate2.png', 
                    foodName: 'Spring Bowl', 
                    price: '\$22.00'),
                  BuildFoodItem(
                    imgPath: 'assets/plate3.png', 
                    foodName: 'Avocado Bowl', 
                    price: '\$26.00'),
                  BuildFoodItem(
                    imgPath:'assets/plate4.png', 
                    foodName: 'Berry Bowl', 
                    price: '\$19.00',),
                ],
              ),
            ),
            ),
          Footer()
          ],
        );
  }
}