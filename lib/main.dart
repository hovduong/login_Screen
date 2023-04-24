import 'package:flutter/material.dart';
import 'package:form_login1/footer.dart';

import 'login/login_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HOME",
      theme: ThemeData(primaryColor: Colors.blue),
      home: const LoginScreen(),
    );
  }
}

class MyLogin1 extends StatefulWidget {
  const MyLogin1({super.key});

  @override
  State<MyLogin1> createState() => _MyLogin1State();
}

class _MyLogin1State extends State<MyLogin1> {
  bool isLogin = true;
  bool isCheck = true;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool isEmail = true;
  bool isPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 120, right: 80),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "By signing in you are agreeing our ",
                      style: TextStyle(
                          color: Color.fromRGBO(152, 144, 144, 1),
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: "Term and privacy policy",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w500))
                ]),
              ),
            ),

            // login
            Padding(
              padding: const EdgeInsets.only(
                  left: 150, right: 130, top: 25, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Color.fromRGBO(177, 177, 177, 1),
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),

            // innput
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 40, bottom: 20),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "Email Address",
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    border: const OutlineInputBorder(),
                    errorText: isEmail ? null : "Emial khong hop le"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 40),
              child: Stack(alignment: Alignment.centerRight, children: [
                TextField(
                  controller: pass,
                  obscureText: isLogin,
                  decoration: InputDecoration(
                      hintText: "Password",
                      icon: const Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      border: const OutlineInputBorder(),
                      errorText:
                          isPass ? null : "Mat Khau Phai It Nhat 6 Ki Tu"),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    isLogin = !isLogin;
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(isLogin ? "Show" : "Hint"),
                  ),
                )
              ]),
            ),

            // check and forget
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isCheck,
                        onChanged: (bool? value) {
                          isCheck = value!;
                        },
                      ),
                      const Text(
                        "Remember password",
                      )
                    ],
                  ),
                  const Text(
                    "Forget password",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),

            // button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  inputLogin();
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(280, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8,
                shadowColor: Colors.grey.withOpacity(0.8),
              ),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text("or connect with"),
            ),
            // icon
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.tiktok,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.linked_camera,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),

            // image
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Stack(children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/imgForm1.png"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Subtract.png"),
                          fit: BoxFit.fill)),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  void inputLogin() {
    if (email.text.length > 6 && email.text.contains("@")) {
      isEmail = true;
    } else {
      isEmail = false;
    }

    if (pass.text.length > 6) {
      isPass = true;
    } else {
      isPass = false;
    }
  }
}
