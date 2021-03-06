import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/constants/styles.dart';
import 'package:home_food/constants/svgs.dart';

class WinHeader extends StatelessWidget {
  const WinHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('WinHeader.build CAL = ${-pi / 10.0}');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [Color(0xffF5B65F), Color(0xffFF9D17)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Transform(
                        transform: Matrix4.skewY(0.2)..rotateZ(-.4),
                        child: SvgPicture.asset(
                          coinSvg,
                          height: 25,
                          width: 25,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Buy and win',
                            style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 16.0),
                            child: Text(
                              'All your product have\nAccumulative points',
                              style: whiteTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Transform(
                        transform: Matrix4.skewX(0.3)..rotateZ(-.25),
                        child: SvgPicture.asset(
                          coinSvg,
                          height: 30,
                          width: 30,
                        ),
                      ),
                      // Spacer(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -20,
            left: -5,
            child: SvgPicture.asset(coinSvg),
          ),
        ],
      ),
    );
  }
}
