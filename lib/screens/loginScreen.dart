import 'package:flutter/material.dart';
import 'package:mytest/screens/dashboardScreen.dart';
import 'package:mytest/social_login/google_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Login!",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
      ),
      body: SafeArea(
        child: Center(
          child: signInWithGoogleUI(),
        ),
      ),
    );
  }


  signInWithGoogleUI() {
    return InkWell(
      onTap: (){
        GoogleLogin.signInWithGoogle().then((data){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return Dashboardscreen(
              email: data?.user?.email,
              name: data?.user?.displayName,
            );
          }));
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Colors.black.withOpacity(0.2)
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: Image.network(
                "https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png",
                height: 40,
                width: 40,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            const  Text("Sign In With Google", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, height: 0),)
          ],
        ),
      ),
    );
  }
}
