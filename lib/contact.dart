import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                launch("tel://+919899580572");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.phone, color: Colors.red),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('9899580572'),
                      Text('Call',
                          style: TextStyle(color: Colors.grey, fontSize: 10))
                    ],
                  ),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Flexible(child: SizedBox(width: double.infinity)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(color: Colors.grey[400], height: 0.4, width: width - 50),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                const uri =
                    'mailto:thebodymovefitness@gmail.com?subject=Query Subject&body=Write your query in detail';
                if (await canLaunch(uri)) {
                  await launch(uri);
                } else {
                  throw 'Could not launch $uri';
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.mail, color: Colors.red),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Flexible(child: SizedBox(width: double.infinity)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('thebodymovefitness@gmail.com'),
                      Text('Email',
                          style: TextStyle(color: Colors.grey, fontSize: 10))
                    ],
                  ),
                  Flexible(child: SizedBox(width: double.infinity)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(color: Colors.grey[400], height: 0.4, width: width - 50),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 20),
                Icon(Icons.location_on, color: Colors.red),
                Flexible(child: SizedBox(width: double.infinity)),
                Text('Neeti Bagh Club\nNeeti Bagh\nNew Delhi - 110049'),
                Flexible(child: SizedBox(width: double.infinity)),
                Flexible(child: SizedBox(width: double.infinity)),
                Flexible(child: SizedBox(width: double.infinity)),
                Flexible(child: SizedBox(width: double.infinity)),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 400,
              width: width - 30,
              child: WebView(
                initialUrl: 'https://goo.gl/maps/UD7eai2x4VkGF5gs5',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            )
          ],
        ),
      ),
    );
  }
}
