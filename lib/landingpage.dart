import 'package:flreelance_asighnment/mainpage.dart';
import 'package:flreelance_asighnment/package_distri.dart';
import 'package:flreelance_asighnment/showcase.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('FreeLancer'),
          backgroundColor: Color.fromARGB(142, 2, 15, 26),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 16, 173, 216),
          )),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome to the Video Editing Showcase!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade300),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Meet our talented video editor and view their latest work!',
                style: TextStyle(fontSize: 18, color: Colors.blue.shade600),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return PortfolioPage();
                    },
                  ));
                },
                child: Text(
                  'View Editing Works',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return UploadPage();
                    },
                  ));
                },
                child: Text(
                  'Submit Video/links',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return PackageSelectionScreen();
                    },
                  ));
                },
                child: Text(
                  'View Package Options',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
