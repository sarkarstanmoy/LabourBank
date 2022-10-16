import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:labour_bank/src/login/otp_view.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _phoneFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Image.asset('assets/images/logo-transparent.png'),
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Text(
                  "Phone Number",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 0),
              child: Form(
                key: _phoneFormKey,
                child: TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Phone is required'),
                      LengthRangeValidator(
                          min: 10,
                          max: 10,
                          errorText: 'Phone number should be 10 digit')
                    ]),
                    maxLength: 10,
                    keyboardType: TextInputType.number),
              ),
            ),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                  onPressed: () => {
                        if (_phoneFormKey.currentState!.validate())
                          {
                            Navigator.restorablePushNamed(
                              context,
                              OtpView.routeName,
                            )
                          }
                      },
                  child: Text(
                    "Submit Phone Number",
                    style: Theme.of(context).primaryTextTheme.bodyLarge,
                  )),
            ),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Have a referral code?",
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Looking to hire staff? Click here",
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
