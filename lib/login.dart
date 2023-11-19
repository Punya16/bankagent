import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loginToPBX = false;
  bool loginToWebphone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        automaticallyImplyLeading: false, // Remove back arrow button
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
        SizedBox(height: 30,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Login to PBX?'),
                    Switch(
                      value: loginToPBX,
                      onChanged: (value) {
                        setState(() {
                          loginToPBX = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
            Container(
              alignment: Alignment.centerRight, // Align the content to the right
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end, // Align the row's children to the end
                children: [
                  Text('Login to Webphone?'),
                  Switch(
                    value: loginToWebphone,
                    onChanged: (value) {
                      setState(() {
                        loginToWebphone = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: canLogin() ? () => navigateToHomePage(context) : null,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  bool canLogin() {
    return (loginToWebphone && usernameController.text.isNotEmpty && passwordController.text.isNotEmpty);
  }

  void navigateToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}