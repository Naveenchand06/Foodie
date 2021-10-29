import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/utils/textstyles.dart';

class DetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Flexible(
            child: Text(
              'Bistro 1898',
              style: kDetailCardTitle,
            ),
          ),
          Flexible(
            child: Text(
              'Fancy amaerican best lasangniya',
              style: kDetailCardSubTitle,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.red,
                  ),
                  Text(
                    ' 12, Kamarajar street',
                    style: kDetailCardAddressStyle,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.amber,
                  ),
                  Text(
                    '4.6',
                    style: kDetailCardRatingStyle,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 5.0,
              ),
              Icon(
                CupertinoIcons.clock,
                size: 18,
                color: Colors.blue,
              ),
              Text(
                '  10am - 11pm',
                style: kDetailCardTimingandPhoneStyle,
              ),
              SizedBox(
                width: 30.0,
              ),
              Icon(
                Icons.phone_in_talk_outlined,
                color: Colors.green,
              ),
              Text(
                ' (+91) 9876543210',
                style: kDetailCardTimingandPhoneStyle,
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'images/food3.png',
                height: 170,
              ),
            ),
          )
        ],
      ),
    );
  }
}
