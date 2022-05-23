import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/constants.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wjBackgroundColor,
      appBar: AppBar(
        backgroundColor: wjBackgroundColor,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 47.8,
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 244,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text("Title",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 20,
                )),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text("Title",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 20,
                )),
          ),
        ],
      ),
    );
  }
}
