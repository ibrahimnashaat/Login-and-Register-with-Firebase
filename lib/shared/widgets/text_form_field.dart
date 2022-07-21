import 'package:flutter/material.dart';
import 'package:neuro_ai/modules/auth_screen/auth_screen.dart';
import 'package:neuro_ai/shared/widgets/button.dart';

import '../../firebase_auth/auth.dart';

class Formfield extends StatefulWidget {

  final AuthType authType;
  const Formfield({Key? key, required this.authType}) : super(key: key);

  @override
  State<Formfield> createState() => _FormState();
}

class _FormState extends State<Formfield> {
  final _formKey = GlobalKey<FormState>();
  late String _email , _password ;
  AuthBase authBase = AuthBase();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              onChanged: (value)=>_email= value,

              validator: (value)=>value!.isEmpty ? 'enter a valid email' : null,
              decoration: InputDecoration(
                  labelText: 'e-mail', hintText: 'ex: text@gmail.com'),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(

              onChanged:  (value) => _password=value,

              validator: (value)=>value!.length < 6 ? 'password must be 6 characters at least' : null,

              decoration: InputDecoration(
                labelText: 'password',
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 18,
            ),
            button(
                txColor: Colors.white,
                bkgColor: Colors.lightBlue,
                onPressed: () async{

                  if (_formKey.currentState!.validate()){

                    if (widget.authType == AuthType.login) {
                      await authBase.loginWithEmailAndPassword(_email, _password);
                    } else {
                      await authBase.registerWithEmailAndPassword(_email, _password);
                    }

                  }

                },
                text: widget.authType == AuthType.login ? 'LOGIN' : 'REGISTER',
                width: double.infinity,
            ),



            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  widget.authType == AuthType.login ? 'don\'t have an account?' : 'have an account?',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                TextButton(
                    onPressed: () {
                      if(widget.authType == AuthType.login) {
                        Navigator.of(context).pushReplacementNamed('register');
                      } else {
                        Navigator.of(context).pushReplacementNamed('login');
                      }
                    },
                    child: Text(
                      widget.authType == AuthType.login ?'Register' : 'Login',
                      style: TextStyle(fontSize: 22),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
