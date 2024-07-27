import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled/size_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
            left: -30,
            right: -60,
            top: 40,
            child: Opacity(
              opacity: .5,
              child: Image.asset(
                "images/bg1.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          ListView(
            cacheExtent: 2000,
            padding: const EdgeInsets.all(24),
            children: [
              30.verticalSpace,
              FadeInRight(
                child: Row(
                  children: [
                    10.horizontalSpace,
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "images/psc.jpg",
                      ),
                    ),
                    12.horizontalSpace,
                    const Text(
                      "Dream.Machine",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/settings.png",
                        width: 24,
                        height: 24,
                      ),
                    )
                  ],
                ),
              ),
              30.verticalSpace,
              FadeInRight(
                delay: const Duration(milliseconds: 200),
                child: SizedBox(
                  height: 120,
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: .8,
                        child: Image.asset(
                          "images/card.png",
                          cacheHeight: 120,
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        left: 20,
                        right: 20,
                        child: Text(
                          "Current Balance",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF272727),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: 20,
                        right: 20,
                        child: Row(
                          children: [
                            const Text(
                              "\$87,430.12",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1D1D1D),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: Icon(
                                Icons.arrow_upward,
                                size: 16,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              "10.2%",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              30.verticalSpace,
              FadeInRight(
                delay: const Duration(milliseconds: 300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SizedBox(
                    height: 48,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: FilledButton(
                            onPressed: () {},
                            child: const Text(
                              "Deposit",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        16.horizontalSpace,
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "Withdraw",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              40.verticalSpace,
              FadeInRight(
                delay: const Duration(milliseconds: 400),
                child: const Text(
                  "Holdings",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              20.verticalSpace,
              buildItem(
                  "images/eth.png", "Ethereum", "ETH", "\$503.12", "50 ETH",
                  delay: 500),
              32.verticalSpace,
              buildItem(
                  "images/bit.png", "Bitcoin", "BTC", "\$26927", "2.05 BTC",
                  delay: 600),
              32.verticalSpace,
              buildItem(
                  "images/vec.png", "Litecoin", "LTC", "\$6927", "2.05 LTC",
                  delay: 700),
              32.verticalSpace,
              buildItem("images/xrp.png", "Ripple", "XRP", "\$4637", "2.05 LTC",
                  delay: 800),
              32.verticalSpace,
              buildItem(
                  "images/bit.png", "Ethereum", "ETH", "\$503.12", "34 LTC",
                  delay: 900),
              32.verticalSpace,
              buildItem("images/eth.png", "Ethereum", "ETH", "\$20", "50 ETH",
                  delay: 1000),
              32.verticalSpace,
              buildItem(
                  "images/eth.png", "Ethereum", "ETH", "\$503.12", "50 ETH",
                  delay: 1200),
              32.verticalSpace,
              buildItem(
                  "images/eth.png", "Ethereum", "ETH", "\$503.12", "50 ETH"),
              32.verticalSpace,
              buildItem(
                  "images/bit.png", "Bitcoin", "BTC", "\$26927", "2.05 BTC"),
              32.verticalSpace,
              buildItem(
                  "images/vec.png", "Litecoin", "LTC", "\$6927", "2.05 LTC"),
              32.verticalSpace,
              buildItem(
                  "images/xrp.png", "Ripple", "XRP", "\$4637", "2.05 LTC"),
              32.verticalSpace,
              buildItem(
                  "images/bit.png", "Ethereum", "ETH", "\$503.12", "34 LTC"),
              32.verticalSpace,
              buildItem(
                  "images/eth.png", "Ethereum", "ETH", "\$503.12", "50 ETH"),
              32.verticalSpace,
              buildItem(
                  "images/eth.png", "Ethereum", "ETH", "\$503.12", "50 ETH"),
              32.verticalSpace,
              buildItem(
                  "images/eth.png", "Ethereum", "ETH", "\$503.12", "50 ETH"),
              32.verticalSpace,
            ],
          ),
        ],
      ),
    );
  }

  Widget buildItem(
    String icon,
    String name,
    String title,
    String money,
    String moneyTitle, {
    int delay = 1200,
  }) {
    return FadeInRight(
      delay: Duration(milliseconds: delay),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset(
              icon,
              width: 24,
              height: 24,
            ),
          ),
          12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6C757D),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                money,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                moneyTitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6C757D),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
