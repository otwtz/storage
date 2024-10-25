import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 68,
      child: Row(
        children: [
          SvgPicture.asset('Assets/Images/Icon (1).svg'),
          Column(
            children: [
              Text(''),
              Text(''),
            ],
          ),

        ],
      ),
    );
  }
}
