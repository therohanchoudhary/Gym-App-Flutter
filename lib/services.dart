import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  final String service;
  final String image;
  final String text;

  ServicePage({this.service, this.image, this.text});

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.service), backgroundColor: Colors.red),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                    width: double.infinity, child: Image.asset(widget.image)),
              ),
              Padding(
                  padding: const EdgeInsets.all(18.0), child: Text(widget.text)),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
