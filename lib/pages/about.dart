import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';

import 'home/components/footer.dart';
import 'home/components/header.dart';

class about extends StatelessWidget {
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
              Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "About Us",
                    style: GoogleFonts.poppins(
                      color: Colors.blue[900],
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Center(
                  child: Container(child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Bhejdo is an Indore based startup company founded in 2020 and dedicated to developing innovative hyper local solutions that give consumers total control over their hyper local needs. Bhejdo is a one stop solution for all the hyper local needs, delivering right from your key, important documents, your favourite food, groceries, medicine and even shifting your house from wherever you want within Indore.Just one year after our company’s inception, Bhejdo has already made tremendous progress towards our goal of providing affordable and innovative on demand delivery solutions, after an early kickstarter  journey of 7000+ on demand delivery which served as powerful proof of Bhejdo’s appeal among our target audience",style: TextStyle(height: 1.3,fontSize: 16),),
                  ),width: 1300,),
              ),
              SizedBox(
                height: 50.0,
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
