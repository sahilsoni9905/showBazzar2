import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_bazzar/Stream/stream_components/neuBox.dart';
import 'package:show_bazzar/Stream/stream_components/stream_colors.dart';

class ReferAndEarnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StremColors.streamBackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: StremColors.streamBackground,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Refer & Earn',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text(
              'Invite your friends and earn rewards!',
              style: GoogleFonts.poppins(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Text(
              'Share your unique referral link and get rewarded when your friends sign up.',
              style: GoogleFonts.poppins(fontSize: 16.0, color: Colors.white),
            ),
            // SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: NeuBox(child: Image.asset('lib/Stream/images/refer.jpg')),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'BDK703JDBSLKKJDJ',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    // Copy the referral link to the clipboard
                  },
                ),
              ),
            ),
            SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6552FE),
                  minimumSize: const Size(double.infinity, 40)),
              child: Text(
                'Share Referral Link',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Rewards Earned',
              style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Card(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '5 Referrals',
                      style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      '2 Extra Bid tries',
                      style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
