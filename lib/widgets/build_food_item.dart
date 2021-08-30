import 'package:dribbble_travel/screens/details_screen.dart';
import 'package:flutter/material.dart';

class BuildFoodItem extends StatelessWidget {
const BuildFoodItem({ Key? key, 
                      required this.imgPath, 
                      required this.foodName, 
                      required this.price }) : super(key: key);

final String imgPath;
final String foodName;
final String price;

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.only(
       left: 10.0,
       right: 10.0,
       bottom: 30.0,
     ),
      child: InkWell(
        onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsScreen(
                heroTag: imgPath,
                foodName: foodName,
                foodPrice: price,
                ),
                ),
              );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Hero(
                  tag: imgPath, 
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                  ),
                ),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
                ],
              ),
            ),
          IconButton(onPressed: () {},
                    icon: Icon(Icons.add),
                    color: Colors.black,
                    ),
          ],
        ),
      ),
     );
 }
}
      
   