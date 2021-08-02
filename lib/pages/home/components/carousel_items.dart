import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/carousel_item_model.dart';
import 'package:web_portfolio/pages/getstarted.dart';


BuildContext context;

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "SAFER & FASTER - ANYTIME ANYWHERE",
            style: GoogleFonts.openSans(
              color: Colors.blue[900],
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "BHEJDO ",
            style: GoogleFonts.poppins(
              color: Colors.orange,
              fontSize: 90.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Bhejdo Delivery is a hyperlocal Delivery service in Indore, Madhya Pradesh. We deal in delivering, pickup, and buying each and everything.\nWe customize our services according to the need of our customers and make their life easy.",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16.0,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              
              child: TextButton(
                onPressed: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context) => getstarted()),);
                },
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "del.png",
        fit: BoxFit.contain,
      ),
      
      
    ),
    
    
  ),
);
