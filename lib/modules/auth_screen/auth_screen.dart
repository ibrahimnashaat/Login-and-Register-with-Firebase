import 'package:flutter/material.dart';

import '../../shared/widgets/button.dart';
import '../../shared/widgets/text_form_field.dart';

enum AuthType {login , register}

class AuthScreen extends StatelessWidget {


  final AuthType authType ;
  const AuthScreen({Key? key, required this.authType}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(40),
                      bottomStart: Radius.circular(40),
                    ),
                    color: Colors.lightBlue,
                  ),
                  child: Column(
                    children: [

                      Image.asset('assets/images/doctor.png',cacheHeight:298),

                    ],
                  ),
                ),

                const SizedBox(

                  height: 12,

                ),

                 Formfield(authType: authType, ),



              ],
            ),
          ],
        ),
      ),
    );
  }
}
