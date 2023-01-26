import 'package:flutter/material.dart';
import 'package:proj/utility/colors.dart';
import 'package:proj/utility/stringtext.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isObscure = true;
  bool is_checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 14, 14, 5),
                    child: Icon(Icons.location_on),
                  ),
                  Text("Perth, Western Australia"),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 14, 14, 10),
                    child: Text(
                      Textstring.getstart,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 14, 10),
                    child: Text(
                      Textstring.registext,
                      style: TextStyle(color: Color(0XFF171717)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 14, 14, 14),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          // labelText: "Username",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF8F92A1)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 14, 14, 14),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          // labelText: "Username",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF8F92A1)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 18, 14, 14),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        obscureText: isObscure,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF8F92A1)),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                            icon: Icon(isObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Checkbox(
                      value: is_checked,
                      onChanged: (bool? value) {
                        setState(() {
                          is_checked = value!;
                        });
                      },
                    ), //Checkbox,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Textstring.termstext),
                      Text(
                        "Term & Conditions",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color(colorsconst.primarycolor))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("SIGN UP"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            const Icon(Icons.arrow_right_alt)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Don't have an account? Sign up"),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 1,
                    color: Color(0xFFF3F6F8),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0XFF3C79E6))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.facebook_outlined),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.13,
                            ),
                            Text("Connect with Facebook"),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
