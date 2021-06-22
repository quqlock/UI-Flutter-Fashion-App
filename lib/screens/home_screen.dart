import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/const.dart';
import 'package:flutter_fashion_app/screens/new_arrivals_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildLogoWidget(),
                  buildHelloWidget(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                    labelText: 'Your Email',
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                    labelText: 'Password',
                                    suffixIcon: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                    labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print('Forgot password!');
                                  },
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      color: mainColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  buildSignInButtonWidget(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewArrilasScreen(),
                      ),
                    );
                  }),
                  buildOrTextWidget(),
                  buildSocialButtonWidget(
                    'Continue with Facebook',
                    'assets/images/logo/facebook_logo.png',
                    () {
                      print('Log in with FB');
                    },
                  ),
                  buildSocialButtonWidget(
                    'Continue with Apple',
                    'assets/images/logo/apple_logo.png',
                    () {
                      print('Log in with Apple');
                    },
                  ),
                  buildSignUpWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding buildSignInButtonWidget(Function signInFunc) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 80,
      ),
      child: Row(
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                height: 55,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => signInFunc(),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildOrTextWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          'or',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget buildSocialButtonWidget(
      String buttonText, String buttonImage, Function logInFunc) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                height: 55,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  side: BorderSide(
                    color: blackColor,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => logInFunc(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        buttonImage,
                        width: 25,
                        height: 25,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      buttonText,
                      style: TextStyle(fontSize: 15, color: blackColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSignUpWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Sign Up',
            style: TextStyle(
              color: mainColor,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLogoWidget() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.animation_sharp,
            size: 40,
            color: mainColor,
          ),
        ],
      ),
    );
  }

  Widget buildHelloWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome back',
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 1.5,
              )),
          Text('Anastasia!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ))
        ],
      ),
    );
  }
}
