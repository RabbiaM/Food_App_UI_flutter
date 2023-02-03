import 'package:flutter/material.dart';
import 'package:work/pages/home_page.dart';
import 'package:work/pages/main_page.dart';
import 'package:work/sign_up.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = new TextEditingController();

  bool isChecked = false;
  bool isAgreed = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            children: [
              //LOGO
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Image.asset(
                  'assets/images/burger.png',
                  height: 100,
                  width: 100,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //SIGN_IN
              Text(
                'SIGN IN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),

              SizedBox(
                height: 25,
              ),

              //TEXTFIELDS
              Container(
                height: 124,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 6.0, right: 6.0, bottom: 9.0),
                      child: Container(
                        child: Stack(
                          children: [
                            InternationalPhoneNumberInput(
                              onInputChanged: (PhoneNumber number) {
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value) {
                                print(value);
                              },
                              selectorConfig: SelectorConfig(
                                selectorType: PhoneInputSelectorType.DIALOG,
                              ),
                              ignoreBlank: false,
                              autoValidateMode: AutovalidateMode.disabled,
                              selectorTextStyle: TextStyle(color: Colors.black),
                              textFieldController: controller,
                              formatInput: false,
                              maxLength: 9,
                              keyboardType: TextInputType.numberWithOptions(
                                  signed: true, decimal: true),
                              cursorColor: Colors.black,
                              inputDecoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(bottom: 15, top: 12),
                                border: InputBorder.none,
                                hintText: 'Phone',
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 17),
                                prefixIcon: Icon(Icons.arrow_drop_down),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                              size: 19,
                              color: Colors.grey[350],
                            ),
                            suffixIcon: Icon(Icons.visibility_off,
                                size: 19, color: Colors.grey[350])),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //CHECKBOX, REMEMBER ME, FORGOT PASSWORD
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Checkbox(
                      activeColor: Colors.orange[600],
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  Expanded(child: Text("Remember Me")),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              //CHECKBOX, AGREE WITH TERMS & CONDITIONS
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Checkbox(
                      activeColor: Colors.orange[600],
                      value: isAgreed,
                      onChanged: (bool? value) {
                        setState(() {
                          isAgreed = value!;
                        });
                      },
                    ),
                  ),
                  Text("I agree with "),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              //BUTTONS
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.orange[600],
                        minimumSize: Size(150, 50),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[600],
                      minimumSize: Size(150, 50),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),

              //SOCIAL LOGINS
              Text(
                "Social Login",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/images/google_logo.png",
                      height: 35,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/images/facebook_logo.png",
                      height: 30,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 40,
              ),

              //CONTINUE AS A GUEST
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Continue as ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        "Guest",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
