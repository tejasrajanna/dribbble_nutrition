import 'package:flutter/material.dart';

class BuildCard extends StatefulWidget {
  final String cardTitle;
  final String info; 
  final String unit;

  BuildCard({Key? key,
          required this.cardTitle,
          required this.info,
          required this.unit,
          }) : super(key: key);

  @override
  _BuildCardState createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  String selectedCard='WEIGHT';

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          selectCard(widget.cardTitle);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: widget.cardTitle == selectedCard ? 
            Color(0xFF7A9BEE): Colors.white,
            border: Border.all(
              color: widget.cardTitle == selectedCard ?
              Colors.transparent: Colors.grey.withOpacity(0.3),
              style: BorderStyle.solid,
              width: 0.75,
            ),
          ),
        height: 100.0,
        width: 100.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 15.0,
                ),
              child: Text(
                widget.cardTitle,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  color: widget.cardTitle == selectedCard ?
                  Colors.white: Colors.grey,
                  fontWeight: FontWeight.w500,
                  ),
              ),
              ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                bottom: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
              widget.info,
              style: TextStyle(
                color: widget.cardTitle == selectedCard ?
                Colors.white: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                fontSize: 14.0, 
                ),
            ),
            Text(
            widget.unit,
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Montserrat',
              color: widget.cardTitle == selectedCard ?
              Colors.white: Colors.black,
              fontWeight: FontWeight.w500,
              ),
            ),
                ],
              ),
            ),
          ],
        ),
           )
      );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
