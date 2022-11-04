import 'package:bmi_app/constants/app_constants.dart';
import 'package:bmi_app/widgets/grid.dart';
import 'package:bmi_app/widgets/left_bar.dart';
import 'package:bmi_app/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({super.key});

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              Text('Creative Mints',
                  style: TextStyle(color: Colors.black, fontSize: 40)),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  fillColor: Color(0xFFff9e9f),
                  hintText: 'Search',
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Grid(),
            ],
          ),
        ),
      ),
    );
  }
}
