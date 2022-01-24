import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> data = [
    {
      'anim': 'assets/18795-coronavirus.json',
      "tip":
          'Follow these five easy steps to help prevent the spread of COVID-19'
    },
    {
      'anim': 'assets/15400-corona-virus-sick.json',
      "tip":
          'Sneeze or cough?  Cover your nose and mouth with a tissue or use your elbow'
    },
    {
      'anim': 'assets/17756-wash-your-hands-covid-19.json',
      "tip": 'Wash your hands often with soap and water for at least 20 seconds'
    },
    {
      'anim': 'assets/20494-covid-molecules-spraying.json',
      "tip":
          'Clean and disinfect surfaces around your home and work frequently.'
    },
    {
      'anim': 'assets/18389-social-distancing.json',
      "tip":
          'Keep at least 6 feet between yourself and others if you must be in public'
    },
    {
      'anim': 'assets/17895-wear-mask.json',
      "tip":
          'Wear a cloth face covering over your mouth and nose when around others'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffc66b),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Covid-19\nSafety Tips',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Expanded(
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Lottie.asset(
                              data[index]['anim'],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            data[index]['tip'],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    );
                  },
                  itemCount: data.length,
                  pagination: new SwiperPagination(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
