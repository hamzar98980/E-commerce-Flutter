import 'package:flutter/material.dart';
import 'package:proj/screens/register.dart';
import 'package:proj/utility/colors.dart';
import 'package:proj/utility/stringtext.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 14, 14, 14),
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
                    Textstring.letsyou,
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 14, 14),
                  child: Text(
                    Textstring.welcomtxt,
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
                        hintText: 'Username or Email',
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
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
                          backgroundColor: MaterialStateProperty.all(
                              Color(colorsconst.primarycolor))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("SIGN IN"),
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                    child: Text("Don't have an account? Sign up"),
                  ),
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
    );
  }
}
