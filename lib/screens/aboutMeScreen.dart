import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              // color: Colors.amber,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: wsize * 0.4,
                      child: CircleAvatar(
                        radius: wsize * 0.4 - 5,
                        backgroundImage:
                            AssetImage('assets/images/profilePic.jpg'),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "CongTV",
                      style: GoogleFonts.rubik(
                          fontSize: 34, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: const [
                        const Text(
                          "#1 Filipino Vlogger",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        FaIcon(
                          FontAwesomeIcons.solidCircleCheck,
                          color: Colors.green,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Applied'),
                            Text(
                              '98',
                              style: GoogleFonts.robotoCondensed(fontSize: 28),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text('Reviewed'),
                            Text(
                              '73',
                              style: GoogleFonts.robotoCondensed(fontSize: 28),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text('Contacted'),
                            Text(
                              '19',
                              style: GoogleFonts.robotoCondensed(fontSize: 28),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              child: Container(
                padding: const EdgeInsets.all(26),
                color: Colors.orange[200],
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Complete Profile'),
                          Text('Personal | Experience | Qualification'),
                        ],
                      ),
                    ),
                    
                    GestureDetector(onTap:() async {
                      final Uri uri = Uri.parse('https://www.linkedin.com/in/carlloyd-viray-889a3022b/');
                      if(!await launchUrl(uri)){
                        print('error on launching');
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.arrowRightLong)),
                    GestureDetector(onTap:() async{
                      final Uri uri = Uri.parse('sms: 09063066760');
                      if(!await launchUrl(uri)){
                        print('error on launching');
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.phone))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
