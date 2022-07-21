import 'package:flutter/material.dart';

import '../../shared/widgets/button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(40),
                    bottomStart: Radius.circular(40),
                  ),
                  color: Colors.lightBlue,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    Image.asset('assets/images/doctor.png'),
                  ],
                ),
              ),

              const SizedBox(

                height: 22,

              ),

              const Text(
                'Here to take care of you',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 30,
                ),
              ),
              const Text(
                'with a single drop, check your health!',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              button(
                txColor: Colors.white,
                bkgColor: Colors.lightBlue,
                onPressed: (){
                  Navigator.of(context).pushNamed('login');
                },
                text: 'START',
                width: 120,
              ),
            ],
          ),
        ],
      ),

    );
  }
}
