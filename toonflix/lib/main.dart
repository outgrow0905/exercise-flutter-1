import 'package:flutter/material.dart';
import 'package:toonflix/widgets/currency_box.dart';
import 'package:toonflix/widgets/rounded_button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp: Google
    // CupertinoApp: Apple
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.end, // Row에서 mainAxis는 가로방향
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.end, // Column에서 crossAxis는 가로방향
                    children: [
                      const Text(
                        'Hey, Selina',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 15,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text('Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                    fontWeight: FontWeight.w100,
                  )),
              const SizedBox(height: 5),
              Text('\$5,100,213',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(height: 20),
              const Row(
                children: [
                  RoundedButton.create(
                    text: "Transfer",
                    backgroundColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RoundedButton.create(
                    text: "Request",
                    backgroundColor: Colors.black87,
                    textColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 25,
                        fontWeight: FontWeight.w100),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const CurrencyBox(
                boxColor: Colors.black87,
                currency: "Euro",
                currencyCode: "EUR",
                amount: "6,428",
                textColor: Colors.white,
                iconColor: Colors.white,
                iconData: Icons.euro_rounded,
                order: 0,
              ),
              const CurrencyBox(
                boxColor: Colors.white,
                currency: "Bitcoin",
                currencyCode: "BTC",
                amount: "28,315",
                textColor: Colors.black,
                iconColor: Colors.black,
                iconData: Icons.currency_bitcoin_rounded,
                order: -20,
              ),
              const CurrencyBox(
                boxColor: Colors.black87,
                currency: "Rupee",
                currencyCode: "INR",
                amount: "124,130",
                textColor: Colors.white,
                iconColor: Colors.white,
                iconData: Icons.currency_rupee,
                order: -40,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
