import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:storage/models/stats.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 15.0,
              animation: true,
              percent: 0.7,
              // Процент (70%)
              center: Text(
                "70%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.blue,
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(''),
                  Text(''),
                ],
              ),
              Column(
                children: [
                  Text(''),
                  Text(''),
                ],
              ),
              Column(
                children: [
                  Text(''),
                  Text(''),
                ],
              ),
            ],
          ),
          SvgPicture.asset('Assets/Images/Frame 40.svg'),
          ListView.builder(
            // itemCount: items.length, // Количество элементов в списке
            itemCount: 3,
            itemBuilder: (context, index) {
              return Stats();
            },
          ),
        ],
      ),
    );
  }
}
