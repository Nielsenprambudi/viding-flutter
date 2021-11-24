import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viding App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Center(
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: Image.asset("assets/viding-logo.png", fit: BoxFit.cover),
                      contentPadding: const EdgeInsets.only(top: 50),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Masukkan Username"
                        ),
                        validator: (String? value) {
                          if(value == null || value.isEmpty) {
                            return 'Username tidak boleh kosong';
                          }
                          return null;
                        },
                        initialValue: username,
                        onChanged: (value) {
                          setState(() {username = value;});
                        },
                      ), 
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Masukkan kata sandi",  
                        ),
                        validator: (String? value) {
                          if(value == null || value.isEmpty) {
                            return 'Kata sandi tidak boleh kosong';
                          }
                          return null;
                        },
                        obscureText: true,
                        initialValue: password,
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                          onPressed: () {
                            debugPrint('on pressed username: $username');
                            debugPrint('on pressed password: $password');
                          },
                          child: const Text("Submit"),
                        ),
                    )
                  ], 
                ),

              ),
            ),
          ) 
        
      );
  }
}


