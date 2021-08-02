import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/pages/home/home.dart';
import 'package:web_portfolio/pages/sanitization.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';

import 'home/components/footer.dart';
import 'home/components/header.dart';

class getstarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Getting Started",
                    style: GoogleFonts.poppins(
                      color: Colors.blue[900],
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Image.asset(
                    "assets/Capture.png",
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                color: Colors.white,
                child: (Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[Divider(color: Colors.black12)],
                      ),
                    )
                  ],
                )),
              ),
              Center(
                child: Text(
                  "Step 1",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "First Add Bhejdo Whatsapp on Your device (+91 7471116975,+91 7000539194)\nThen Say - Hi -",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 500,
                  width: 800,
                  child: Image.asset(
                    "assets/get1.png",
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Step 2",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Then Fill Form and Submit Details And Thats it !\nEnjoy Our Services",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 500,
                  width: 800,
                  child: Image.asset(
                    "assets/get2.png",
                  ),
                ),
              ),
              SizedBox(height: 100),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[700],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  height: 60.0,
                  width: 400,
                  padding: EdgeInsets.symmetric(
                    horizontal: 60.0,
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "assets/whatsapp.png",
                          ),
                        ),
                        SizedBox(width:10),
                        TextButton(
                          onPressed: () {
                           Navigator.pushNamed(context, '/Sanitization');
                            
                          },
                          child: Center(
                            child: Text(
                              "START BOOKING",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Container(
                  child: Text("'This May Take to your Whatsapp Application'",
                  style:  TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,),
                ),
              ),
              //foooter chalu
              SizedBox(
                height: 100.0,
              ),
              Container(
                color: Colors.white,
                child: (Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[Divider(color: Colors.black12)],
                      ),
                    )
                  ],
                )),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
