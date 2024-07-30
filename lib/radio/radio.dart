import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Image.asset("assets/images/radio_image.png"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {},
                  child: Image.asset("assets/images/Icon metro-next.png")),
              InkWell(
                  onTap: () {},
                  child: Image.asset("assets/images/Icon awesome-play.png")),
              InkWell(
                  onTap: () {},
                  child: Image.asset("assets/images/Icon metro-nexttow.png")),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
        ],
      ),
    );
  }
}
