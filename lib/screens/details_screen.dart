import 'package:dribbble_travel/widgets/details_layout.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key, this.heroTag, this.foodName, this.foodPrice }) : super(key: key);

  final heroTag;
  final foodName;
  final foodPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();} , 
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        'Details',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.more_horiz),
          color: Colors.white,
          ),
      ],
      ),
    body: DetailsLayout(
      heroTag: this.heroTag,
      foodPrice: this.foodPrice,
      foodName: this.foodName,)
    );
  }
}