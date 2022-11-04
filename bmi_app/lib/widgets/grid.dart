import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.red),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.blueGrey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
