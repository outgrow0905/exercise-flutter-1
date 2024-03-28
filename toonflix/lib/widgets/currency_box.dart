import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final Color boxColor;
  final String currency;
  final String currencyCode;
  final String amount;
  final Color textColor;
  final Color iconColor;
  final IconData iconData;
  final double order;

  const CurrencyBox(
      {super.key,
      required this.boxColor,
      required this.currency,
      required this.currencyCode,
      required this.amount,
      required this.textColor,
      required this.iconColor,
      required this.iconData,
      required this.order});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currency,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w200,
                            fontSize: 20),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        currencyCode,
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w200,
                            fontSize: 17),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Transform.scale(
                    scale: 2,
                    child: Transform.translate(
                      offset: const Offset(-5, 15),
                      child: Icon(
                        iconData,
                        color: iconColor,
                        size: 90,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
