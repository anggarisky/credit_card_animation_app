import 'package:credit_card_app/styles/button.dart';
import 'package:credit_card_app/styles/color.dart';
import 'package:credit_card_app/styles/typo.dart';
import 'package:flutter/material.dart';

class NewCard extends StatefulWidget {
  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  var bgcard = 'assets/bg1.png';
  bool btn1 = true;
  bool btn2 = false;
  bool btn3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Image.asset('assets/user_photo.png', height: 80),
              SizedBox(height: 30),
              Text('Open New Card', style: cardHeader),
              SizedBox(height: 10),
              Text(
                'Build your wealth easily with our international interest rate',
                style: cardSubHeader,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(bgcard),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6),
                      Image.asset('assets/cc.png', height: 32),
                      SizedBox(height: 30),
                      Text(
                        '\$25,000,000',
                        style: balanceCard,
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Text(
                            '•••• •••• •••• 1996',
                            style: bodyCard,
                          ),
                          Spacer(),
                          Text(
                            '08/30',
                            style: bodyCard,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: btn1 ? 70 : 50,
                    height: 70,
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        setState(() {
                          bgcard = 'assets/bg1.png';
                          btn1 = true;
                          btn2 = false;
                          btn3 = false;
                        });
                      },
                      icon: Image.asset('assets/btn1.png'),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: btn2 ? 70 : 50,
                    height: 70,
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        setState(() {
                          bgcard = 'assets/bg2.png';
                          btn1 = false;
                          btn2 = true;
                          btn3 = false;
                        });
                      },
                      icon: Image.asset('assets/btn2.png'),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: btn3 ? 70 : 50,
                    height: 70,
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        setState(() {
                          bgcard = 'assets/bg3.png';
                          btn1 = false;
                          btn2 = false;
                          btn3 = true;
                        });
                      },
                      icon: Image.asset('assets/btn3.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              ElevatedButton(
                style: buttonCardPrimary,
                onPressed: () {},
                child: Text('Save My Card', style: labelButtonCard),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
